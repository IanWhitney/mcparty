function pick_reason(reason) {
  reason = $(reason);
  highlight_reason(reason);
  $('#attendee_reason_id').val(reason.attr('data-value'));
  show_right();
  $('#attendee_reason_name').hide();
  $('#attendee_reason_name_label').hide();
  $('#attendee_name').focus();
}

function add_reason(reason) {
  highlight_reason(reason);
  $('#attendee_reason_id').val(null);
  show_right();
  $('#attendee_reason_name').show();
  $('#attendee_reason_name_label').show();
}

function clear_selected() {
  $('.selected_reason').each(function(index) {
    $(this).removeClass('selected_reason');
  })
}

function hide_right() {
  $('#left').addClass('grid_12');
  $('#left').removeClass('grid_7');
}

function show_right() {
  $('#left').addClass('grid_7');
  $('#left').removeClass('grid_12');
  $('#right').height($(window).height() - 20);
  $('#right').show(1000);
}

function highlight_reason(reason) {
  $(reason).addClass("selected_reason");
}