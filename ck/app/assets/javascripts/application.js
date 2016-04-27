// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function GetURLParameter(sParam)
{
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) 
    {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sParam) 
        {
            return sParameterName[1];
        }
    }
}

function change_san () {
  san_id = $('#san').val();
  if (san_id != 'ALL') {
    window.location.href = main_url + "?san_id=" + san_id;
  } else{
    window.location.href = main_url;
  };
}

function change_nam() {
  san_id = $('#nam').val();
  if (san_id != 'ALL') {
    window.location.href = main_url + "?nam_id=" + san_id;
  } else{
    window.location.href = main_url;
  };
}
