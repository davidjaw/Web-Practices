$(function(){
  $('#header').append(new EJS({url: 'template/header.ejs'}).render());
  $('.hidHost').hover( function(){
    var _this = $(this),
      _subnav = _this.children('ul');
    _this.css('background', '#00FFFF');
    _subnav.css('display', 'block');
  }, function(){
		$(this).css('backgroundColor', '').children('ul').css('display', 'none');
  });
});
