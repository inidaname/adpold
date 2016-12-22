$(document).ready(function() {
    // picture uploading through ajax
    var picvar = '';
    var userlink = '';
    $('#passport').change(function(event) {
        var picpas = this.files[0];
        picname = picpas.name;
        picsize = picpas.size;
        pictype = picpas.type;

        var acceptedpic = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
        if (!$.inArray(pictype, acceptedpic)) {
            var imgwn = 'Only Image format is allowed, Thank You';
        } else {
            var formData = new FormData();
            formData.append('file', $('input[type=file]')[0].files[0]);
            $.ajax({
                url: "/php/ajax/imageupload.php", // Url to which the request is send
                type: "POST", // Type of request to be send, called as method
                data: formData, // Data sent to server, a set of key/value pairs (i.e. form fields and values)
                contentType: false, // The content type used when sending data to the server.
                cache: false, // To unable request pages to be cached
                processData: false, // To send DOMDocument or non processed data file it is set to false
                success: function(data) // A function to be called if request succeeds
                    {
                        picvar = data;
                    }
            });
        }
    });
    // function to check if it email
    checkme = [];

    var fullname = $('#fullname'); // get the full name input
    var phonenumber = $('#phonenumber'); // the phone number input

    fullname.click(function(event) {
        $('#nalab').css('display', 'inline').fadeIn('13000');
    }).blur(function(event) {
        $('#nalab').fadeOut('13000');
    });

    phonenumber.click(function(event) {
        $('#colab').css('display', 'inline').fadeIn('13000');
    }).blur(function(event) {
        $('#colab').fadeOut('13000');
    });

    // ajax to check for number register
    phonenumber.blur(function(event) {
        if (phonenumber.val() != '' && fullname.val() != '') {
            if ($.isNumeric(phonenumber.val()) || isEmail(phonenumber.val())) {
                $.ajax({
                        url: '/php/ajax/checkuser.php',
                        type: 'POST',
                        data: {
                            'contactDetail': phonenumber.val()
                        },
                        dataType: 'json'
                    })
                    .done(function(data) {
                        $('#colab').remove();
                        $('#useable').html(data.message);
                        if (data.success == true) {
                            $('#membership').removeAttr('disabled');
                        }
                    });
            }
        }
    }).keypress(function(event) {
        $('#membership').attr('disabled', '');
    }).mousemove(function(event) {
        if (phonenumber.val() != '' && fullname.val() != '') {
            if ($.isNumeric(phonenumber.val()) || isEmail(phonenumber.val())) {
                $('#membership').removeAttr('disabled', '');
            }
        }
    });


    // a registration of visited members

    $('#memVis').submit(function(event) {
        $.ajax({
                url: '/php/ajax/register.php',
                type: 'POST',
                dataType: 'json',
                data: {
                    'fullname': $('input[name=fullname]').val(),
                    'contactDetail': $('input[name=phonenumber]').val()
                }
            })
            .done(function(data) {
                console.log(data);
                window.location.href = 'register.html?p=' + data.hashUser + '&t=User';
            }).error(function(data) {
                console.log(data);
            });;
        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
    });


    // registration of full profile
    $('#fullpro').submit(function(event) {
        $.ajax({
                url: '/php/ajax/fullpro.php',
                type: 'POST',
                dataType: 'json',
                data: {
                    'picture': picvar,
                    'firstname': $('input[name=firstname]').val(),
                    'lastname': $('input[name=lastname]').val(),
                    'gender': $('select[name=gender]').val(),
                    'dateofbirth': $('input[name=dateofbirth]').val(),
                    'phone': $('input[name=phone]').val(),
                    'email': $('input[name=emaildd]').val(),
                    'hashUser': $('input[name=hashUser]').val()
                }
            })
            .done(function(data) {
                userlink = MD5($('input[name=emaildd]').val() + $('input[name=phone]').val());
                if (data.success == true) {
                    window.location.href = 'register.html?p=' + $('input[name=hashUser]').val() + '&t=address';
                }
            });
        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
    });

    // registration of full address
    $('#fulladd').submit(function(event) {
        $.ajax({
                url: '/php/ajax/fulladd.php',
                type: 'POST',
                dataType: 'json',
                data: {
                    'stateoforigin': $('input[name=stateoforigin]').val(),
                    'lgarea': $('input[name=lgarea]').val(),
                    'wardarea': $('select[name=wardarea]').val(),
                    'countryofres': $('input[name=countryofres]').val(),
                    'addressOfRes': $('input[name=addressOfRes]').val(),
                    'hashUser': $('input[name=hashUser]').val()
                }
            })
            .done(function(data) {
                if (data.success == true) {
                    window.location.href = 'confirm.html?p=' + $('input[name=hashUser]').val() + '';
                }
            });

        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
    });


    // windows to get link address bar
    if (window.location.href.indexOf("register") > -1) {
        // to check for user in the database
        var thephone = $('input[name=phone]');
        var theemail = $('input[name=emaildd]');

        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return (false);
        }
        var pickit = getQueryVariable("p");
        var getit = getQueryVariable("t");
        if (pickit !== '' && getit !== '') {
            $('.regForm').slideDown(1000);
            $('#hashUser').val(pickit);
            $('#hashUserag').val(pickit);
            $.ajax({
                    url: '/php/ajax/getit.php',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        'hashUser': pickit
                    }
                })
                .done(function(data) {
                    console.log(data);
                    if (data.success == true) {
                        var GetName = data.userdatas.fullname;
                        var FullName = GetName.split(" ");
                        var FName = FullName[0];
                        var LName = FullName[1];
                        $('input[name=firstname]').val(FName);
                        $('input[name=lastname]').val(LName);
                        if (data.userdatas.contactType == 'Email') {
                            $('input[name=emaildd]').val(data.userdatas.contactDetail).attr('disabled', '');
                        } else {
                            $('input[name=phone]').val(data.userdatas.contactDetail).attr('disabled', '');
                        }
                    }
                });
            if (getit == 'User') {
                $('#fullpro').fadeIn(5000);
                $('#d1').fadeIn(5000);

            } else if (getit == 'address') {
                $('#fullpro').fadeOut(1000);
                $('#fulladd').fadeIn(5000).delay(1200);
                $('#d2').fadeIn(5000);
            }
        }
    }

    if (window.location.href.indexOf("confirm") > -1) {
        // to check for user in the database

        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return (false);
        }
        var pickit = getQueryVariable("p");
        var getit = getQueryVariable("t");
        $('#qrgen').val(pickit);

        function generateSerialKeys(length, separator) {
        separator = separator || '-';
        var license = new Array(length + 1).join((Math.random().toString(36) + '00000000000000000').slice(2, 18)).slice(0, length);
        return license.toUpperCase().replace(/(\w{4})/g, '$1' + separator).substr(0, length + Math.round(length/4)-1);
      }

      console.log(generateSerialKeys(24, ' ')); // JXG5 QDER DNXK O6R0 JXG5 QDER
      console.log(generateSerialKeys(24));      // QY3R-9Q31-FF5K-A9K9-QY3R-9Q31
      console.log(generateSerialKeys(20));      // HJ0A-EUXD-7U95-DN29-HJ0A
      console.log(generateSerialKeys(16)); // 41X3-U8D4-SKP2-2O6R
}


});
