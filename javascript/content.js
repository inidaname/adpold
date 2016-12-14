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
      $('#colab').css('display', 'inline').fadeOut('13000');
    });
    phonenumber.click(function(event) {
      $('#nalab').css('display', 'inline').fadeOut('13000');
      $('#colab').css('display', 'inline').fadeIn('16000');
    });

    fullname.change(function(event) {
      setBtact('fullname');
    });

    phonenumber.change(function(event) {
      if ($.isNumeric(phonenumber.val()) || isEmail(phonenumber.val())) {
        setBtact('phonenumber');
      }
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
          if ($.isNumeric(phonenumber.val()) || isEmail(phonenumber.val())) {
            $('#membership').removeAttr('disabled');
          }
        });
      }
    }
});
