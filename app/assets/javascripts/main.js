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


});