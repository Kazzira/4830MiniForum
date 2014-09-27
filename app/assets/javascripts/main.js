$(document).ready(function()
{
  $(".button").mouseenter(function()
  {
  	$(this).addClass('button-hover', 260);

  });

  $(".button").mouseleave(function()
  {
  	$(this).removeClass('button-hover', 250);
  });

  $(".board-container").mouseenter(function()
  {
  	$(this).addClass('board-container-highlight', 460);
  	$(this).find('.board-container-middle > a > .board-title').addClass('board-title-cont-highlight', 460);
  	$(this).find('.board-container-middle > .board-description').addClass('board-description-cont-highlight', 460);
  	$(this).find('.board-container-left > a > .board-button').addClass('board-button-cont-highlight', 460);
  });

  $(".board-container").mouseleave(function()
  {
  	$(this).removeClass('board-container-highlight', 460);
  	$(this).find('.board-container-middle > a > .board-title').removeClass('board-title-cont-highlight', 460);
  	$(this).find('.board-container-middle > .board-description').removeClass('board-description-cont-highlight', 460);
  	$(this).find('.board-container-left > a > .board-button').removeClass('board-button-cont-highlight', 460);
  });

  $(".board-title").mouseenter(function()
  {
  	$(this).addClass('board-title-highlight', 160);
  	$(this).removeClass('board-title-cont-highlight', 160);
  });

  $(".board-title").mouseleave(function()
  {
  	$(this).addClass('board-title-cont-highlight');
  	$(this).removeClass('board-title-highlight', 160);
  	
  });

  $(".board-button").mouseenter(function()
  {
  	$(this).addClass('board-button-highlight', 260);
  	$(this).removeClass('board-button-cont-highlight');

  });
  $(".board-button").mouseleave(function()
  {
  	$(this).addClass('board-button-cont-highlight');
  	$(this).removeClass('board-button-highlight', 260);
  	
  });

  $(".main-admin-button").mouseenter(function()
  {
  	$(this).addClass('main-admin-button-highlight', 260);
  });

  $(".main-admin-button").mouseleave(function()
  {
  	$(this).removeClass('main-admin-button-highlight', 260);
  });
});