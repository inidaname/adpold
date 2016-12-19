$(document).ready(function() {
  // picture uploading through ajax
  var picvar = '';
  var userdata = '';
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
      type: "POST",             // Type of request to be send, called as method
      data: formData, // Data sent to server, a set of key/value pairs (i.e. form fields and values)
      contentType: false,       // The content type used when sending data to the server.
      cache: false,             // To unable request pages to be cached
      processData:false,        // To send DOMDocument or non processed data file it is set to false
      success: function(data)   // A function to be called if request succeeds
        {
          picvar = data;
        }
      });
    }
  });
  // function to check if it email
  function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
  }
  checkme =[];

    var fullname = $('#fullname'); // get the full name input
    var phonenumber = $('#phonenumber'); // the phone number input

    fullname.click(function(event) {
      $('#nalab').css('display', 'inline').fadeIn('13000');
    });
    phonenumber.click(function(event) {
      $('#nalab').css('display', 'inline').fadeOut('13000');
      $('#useable').html("Phone Number or Email")
    });

    fullname.change(function(event) {
      setBtact('fullname');
    });



    // for collecting arrays
    function setBtact(action) {
      if (action) {
        checkme.push(action);
      }
      checkme = $.unique(checkme);
      if (checkme.length >= 2) {
        $('#membership').removeAttr('disabled');
        phonenumber.keydown(function(event) {
          $('#membership').attr('disabled', '');
          // if ($.isNumeric(phonenumber.val()) || isEmail(phonenumber.val())) {
          //   $('#membership').removeAttr('disabled');
          // }
        });
      }
    }

    // ajax language for user already exit
    phonenumber.change(function(event) {
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
          $('#useable').html(data.message);
          if (data.success == true) {
            setBtact('phonenumber');
          }
        });
      } else {
        $('#useable').html('Please Phone Number or Email')
      }
    });

    // a registration of visited members

    $('#membership').click(function(event) {
      $.ajax({
        url: '/php/ajax/register.php',
        type: 'POST',
        data: {
          'fullname': fullname.val(),
          'contactDetail': phonenumber.val()
        },
        dataType: 'json'
      })
      .done(function(data) {
        window.location.href = 'register.html?p='+data.hashUser+'';
      });
      // stop the form from submitting the normal way and refreshing the page
      event.preventDefault();
    });




    $('form').submit(function(event) {
      $.ajax({
        url: '/php/ajax/fullpro.php',
        type: 'POST',
        dataType: 'json',
        data: {
          'picture' :picvar,
          'firstname' :$('input[name=firstname]').val(),
          'lastname' :$('input[name=lastname]').val(),
          'gender' :$('select[name=gender]').val(),
          'dateofbirth' :$('input[name=dateofbirth]').val(),
          'phone' :$('input[name=phone]').val(),
          'email' :$('input[name=emaildd]').val(),
          'hashUser'  :$('input[name=hashUser]').val()
        }
      })
      .done(function(data) {
        if (data.success == true) {
          console.log(data);
        }
      });
      // stop the form from submitting the normal way and refreshing the page
      event.preventDefault();
    });


    // windows to get link address bar
    if(window.location.href.indexOf("register") > -1) {
      function getQueryVariable(variable)
      {
             var query = window.location.search.substring(1);
             var vars = query.split("&");
             for (var i=0;i<vars.length;i++) {
                     var pair = vars[i].split("=");
                     if(pair[0] == variable){return pair[1];}
             }
             return(false);
      }
      var pickit = getQueryVariable("p");
      if (pickit !== '') {
        $('.regForm').slideDown(1000);
        $('#hashUser').val(pickit);
        $.ajax({
          url: '/php/ajax/getit.php',
          type: 'POST',
          dataType: 'json',
          data: {'hashUser': pickit}
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
      }
    }


});
