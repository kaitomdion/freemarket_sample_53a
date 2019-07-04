$(function(){
  $('img.is-higher-width').mouseover(function(){
   var $thisImg = $(this).attr('src');
  //  var $thisAlt = $(this).attr('alt');
   $('img.owl-lazy').attr({src:$thisImg});
  });
 });