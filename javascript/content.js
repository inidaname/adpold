$(document).ready(function() {
  
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
        url: '/php/register.php',
        type: 'POST',
        data: {
          'fullname': fullname.val(),
          'contactDetail': phonenumber.val()
        },
        dataType: 'json'
      })
      .done(function(data) {
        console.log(data);
      });
      // stop the form from submitting the normal way and refreshing the page
      event.preventDefault();
    });

});
