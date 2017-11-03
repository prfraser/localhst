// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require medium-editor
//= require jquery.raty
//= require ratyrate
//= require turbolinks
//= require_tree .

// $( document ).on('turbolinks:load', function() {
//   var editor = new MediumEditor('.editable');
//   $("#save").on('click', save);
//   if (document.getElementById('logo-dropzone')) {
//     var options = {
//       init: function() {
//         this.on('addedfile', function (file) {
//           console.log(file)
//           $("#logo-dropzone").html(file.previewTemplate);
//         })
//       },
//       url: "/media_contents",
//       headers: {
//         'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content'),
//         'image-position': 'logo'
//       },
//       thumbnailWidth: 300,
//       thumbnailHeight: 300,
//       thumbnailMethod: "contain"
//     }
//     var myDropzone = new Dropzone("div#logo-dropzone", options);
//     return myDropzone.on("success", function() {
//       $("#logo-dropzone img").addClass("logo img-responsive");
//       $('.dz-details, .dz-progress, .dz-error-message, .dz-success-mark, dz-error-mark').remove()
//     });
//   }
// })

function save() {
  $("#save").addClass('busy')
  tour = {}
  tour['body'] = $('.editable').html();
  $.ajax({
    type: 'PUT',
    dataType: 'json',
    contentType: "application/json; charset=utf-8",
    success: function(data) {
      $("#save").removeClass('busy')
    },
    data: JSON.stringify(tour)
  });
}

$(document).on('turbolinks:load', function() {	
	var editor = new MediumEditor('.editable', {
    toolbar: {
        buttons: [
        	'bold', 
        	'italic', 
        	'underline', 
        	'anchor', 
        	'quote', 
        	'unorderedlist', 
        	'indent', 
        	'outdent',
          'addy'
        	]
        },
        extensions: {
            'addy': new MediumButton({
              label:'Address', // Button Label: HTML and Font-Awesome is possible
              start:'<div class="addy">', // Beginning of the selection
              end:'</div>' // End of the selection
            })
          }
        });
  $("#save").on('click', save);

})

