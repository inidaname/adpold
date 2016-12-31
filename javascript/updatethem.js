var justcatch = [
  'firstname',
  'lastname',
  'gender',
  'dateofbirth',
  'phone',
  'email',
  'whatsapp'
];

var dataTables = [
  'fullpro',
  'fulladd'
];

var country_list = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia","Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];



// function to get the value address bar
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

  var hashUser = getQueryVariable("p");
  function divClicked() {
  var divHtml = $(this).html();
  var nameOf = $(this).attr('id');
  var classOf = $(this).attr('name');
  if (nameOf == 'addressOfRes') {
    var editableText = $("<textarea />").attr({'name': nameOf, 'class': classOf});
  } else if (nameOf == 'stateoforigin') {
    var editableText = $("<select />").attr({'name': nameOf, 'class': classOf, 'id': 'states'});
    $(editableText).ready(function() {
      var option = '';

      var states = $.nigeria.states();
      for (var i = 0; i < states.length; i++) {
          option += '<option value="' + states[i] + '">' + $.ucfirst(states[i]) + '</option>';
      }
      $('#states').append(option);

    });
  } else if (nameOf == 'lgarea') {
    var editableText = $("<select />").attr({'name': nameOf, 'class': classOf, 'id': 'lgarea'});
      $(editableText).ready(function() {

            var option = '';
            option += '<option value="">Local government</option>';

            var lgas = eval('$.nigeria.' + $('#stateoforigin').html());
            for (var i = 0; i < lgas.length; i++) {
                option += '<option value="' + lgas[i] + '">' + $.ucfirst(lgas[i]) + '</option>';
            }

            $('#lgarea').find('option')
                .remove()
                .end().append(option);
      });
  } else if (nameOf == 'countryofres') {
    var editableText = $("<select />").attr({'name': nameOf, 'class': classOf, 'id': 'countryofres'});
    $(editableText).ready(function() {
      var option = '';
        option += '<option value="">Country</option>';
      var listcountries = country_list;
      for (var i = 0; i < listcountries.length; i++) {
        option += '<option value="' + listcountries[i] + '">' + listcountries[i] + '</option>';
      }
      $('#countryofres').find('option').remove().end().append(option);
    });
  } else {
    var editableText = $("<input type='text' />").attr({'name': nameOf, 'class': classOf});
  }
  if (divHtml == 'Click To Edit' || divHtml == ' ') {
    editableText.attr('placeholder', 'Edit this content');
  } else {
    editableText.val(divHtml);
  }
  $(this).replaceWith(editableText);
  editableText.focus();
  // setup the blur event for this new textarea
  editableText.blur(editableTextBlurred);
}

function editableTextBlurred() {
  var html = $(this).val();
  var justname = $(this).attr('name');
  var justtable = $(this).attr('class');
  var viewableText = $("<var>");
  var viewableTextVar = viewableText.attr({'id': justname, 'name': justtable});

  viewableText.html(html);


  $.ajax({
    url: '/php/ajax/update.php',
    type: 'POST',
    dataType: 'json',
    data: {
      'stringname' : justname,
      'stringvals' : html,
      'tableUP' : justtable,
      'hashUser' : hashUser
    }
  }).done(function(data) {
    if (data.success == false) {
      alert(data.message);
    }
    console.log(data);
  });


  $(this).replaceWith(viewableTextVar);
  // setup the click event for this new div
  viewableText.click(divClicked);
}

$(document).ready(function() {
  $('#idpic').click(function(event) {
    $('#picport').trigger('click');
  });

  $('span').click(function(event) {
    var triclick = $($(event.currentTarget).children()[1]).trigger('click');
  });


  $('#picport').change(function(event) {
        var picpas = $('#picport')[0].files[0];
        picname = picpas.name;
        picsize = picpas.size;
        pictype = picpas.type;

        var acceptedpic = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
        if (!$.inArray(pictype, acceptedpic)) {
            alert('Only Image format is allowed, Thank You');
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
                        var picdata = data;
                        $.ajax({
                          url: '/php/ajax/update.php',
                          type: 'POST',
                          dataType: 'json',
                          data: {
                            'stringname' : 'picture',
                            'stringvals' : picdata,
                            'tableUP' : 'fullpro',
                            'hashUser' : hashUser
                          }
                        }).done(function() {
                          var d = new Date();
                          $("#idpic").attr("src", "upload/"+picdata+"?"+d.getTime())
                        });
                    }
            });
        };



  });

  var nameOf = $('.editable');
  for (var i = 0; i < nameOf.length; i++) {
    nameOf[i];
  }

  $(nameOf).click(divClicked);

  var pickit = getQueryVariable("p");
  var getit = getQueryVariable("t");
  if (pickit !== '') {
    $('#hashUser').val(pickit);
    $.ajax({
      url: '/php/ajax/datash.php',
      type: 'POST',
      dataType: 'json',
      data: { 'hashUser': pickit}
    })
    .done(function(data) {
      if (data.success == true && data.message == "Address") {
        var userDatas = data.userdatas;
        $('#idpic').attr('src', '/upload/'+userDatas.picture);
        $('#firstname').html(userDatas.firstname);
        $('#lastname').html(userDatas.lastname);
        $('#gender').html(userDatas.gender);
        $('#dateofbirth').html(userDatas.dateofbirth);
        $('#email').html(userDatas.email);
        $('#phone').html(userDatas.phone);
        $('#whatsapp').html(userDatas.whatsapp);

        $.ajax({
          url: '/php/ajax/hashAdd.php',
          type: 'POST',
          dataType: 'json',
          data: {'hashUser': userDatas.hashUser}
        });
      } else if (data.success == true && data.message == 'Combined') {
        var userDatas = data.userdatas;
        $('#idpic').attr('src', '/upload/'+userDatas.picture);
        $('#firstname').html(userDatas.firstname);
        $('#lastname').html(userDatas.lastname);
        $('#gender').html(userDatas.gender);
        $('#dateofbirth').html(userDatas.dateofbirth);
        $('#email').html(userDatas.email);
        $('#phone').html(userDatas.phone);
        $('#whatsapp').html(userDatas.whatsapp);
        var userAdd = data.userAdd;
        $('#wardarea').html(userAdd.wardarea);
        $('#lgarea').html(userAdd.lgarea);
        $('#stateoforigin').html(userAdd.stateoforigin);
        $('#addressOfRes').html(userAdd.addressOfRes);
        $('#countryofres').html(userAdd.countryofres);

      } else if (data.success == false) {
        window.location.href == 'register.html?p=New&t=User';
      }
    });

  }
});
