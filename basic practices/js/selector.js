// ¸ü¤Jselect radio checkbox
$(function(){
  $('#prizeSelector').select2();
  $('#seatSelector').select2();
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue'
  });
  $('#startDate').datetimepicker({
    format: 'YYYY/MM/DD',
  });
  $('#startTime').datetimepicker({
    format: 'LT',
  });
});
function submit (){
  
}