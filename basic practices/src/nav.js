$(function(){
  console.log('sucess');
  $('.hidHost').hover( function(){
    var _this = $(this),
      _subnav = _this.children('ul');
      console.log('acessed!');
      
      _subnav.css('display', 'block');
  }, function(){
		$(this).css('backgroundColor', '').children('ul').css('display', 'none');
  });
});
