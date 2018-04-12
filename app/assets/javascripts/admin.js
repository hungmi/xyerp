//= require rails-ujs
//= require activestorage
//= require jquery.min
//= require popper
//= require bootstrap
//= require jquery.timeago
//= require jquery.floatThead.min
//= require turbolinks

$(document).on("turbolinks:load", function() {
	// 在 table.table 上加上 thead-fixed，即會自動將 header 固定～
	var $table = $('table.thead-fixed');
	$table.floatThead();
})