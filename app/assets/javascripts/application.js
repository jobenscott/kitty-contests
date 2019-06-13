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
//= require jquery3
//= require popper
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


jQuery(function($){


	$(document).on('click', '#kitty-vote', function(e){
		e.preventDefault();

		var address = $('#user-address').data('current-user-address');
		var kitty_id = $(this).data('kitty-id');
		var that = this;


		$.ajax({
			type: 'POST',
			url: '/home/kitty_vote',
			data: { kitty_id: kitty_id, address: address },
			success: function(data) {
				data = JSON.parse(data);
				console.log(data);
				$(that).attr('disabled','disabled');
				if(data.vote_count == 1) {
					console.log('here');
					$(that).html(data.vote_count +' Vote')
				} else {
					$(that).html(data.vote_count +' Votes')
				}
				
			}
		})
	});
});