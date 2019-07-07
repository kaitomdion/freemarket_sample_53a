$(function(){
  $('img.is-higher-width').mouseover(function(){
   var $thisImg = $(this).attr('src');
   $('img.owl-lazy').attr({src:$thisImg});
  });
 });
