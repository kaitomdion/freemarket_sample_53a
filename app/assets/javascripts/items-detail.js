// $(function(){
//   $('img.is-higher-width').mouseover(function(){
//    var $thisImg = $(this).attr('src');
//    $('img.owl-lazy').attr({src:$thisImg});
//   });
//  });

$(function() {
  //slick
  $(".slider-for01").slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      dots: true,
      //arrows: false,
      fade: true,
      adaptiveHeight: true,
      asNavFor: '.slider-nav01'
  });
  $(".slider-nav01").slick({
      slidesToShow: 8,
      slidesToScroll: 1,
      asNavFor: '.slider-for01',
      //centerMode: true,
      focusOnSelect: true
  });
  $(".slider-for02").slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      dots: true,
      //arrows: false,
      fade: true,
      adaptiveHeight: true,
      asNavFor: '.slider-nav02'
  });
  $(".slider-nav02").slick({
      slidesToShow: 8,
      slidesToScroll: 1,
      asNavFor: '.slider-for02',
      //centerMode: true,
      focusOnSelect: true
  });
  $(".slider-for03").slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      dots: true,
      //arrows: false,
      fade: true,
      adaptiveHeight: true,
      asNavFor: '.slider-nav03'
  });
  $(".slider-nav03").slick({
      slidesToShow: 8,
      slidesToScroll: 1,
      asNavFor: '.slider-for03',
      //centerMode: true,
      focusOnSelect: true
  });
  //枚数がカルーセルに満たない場合
  $(function() {
      $(".mod_slide").each(function() {
          var slidepak = $(this);
          var image = $(slidepak).find(".mod_slide_img");
          var num = $(slidepak).find(".mod_slide_img img").length;
          var dots = $(slidepak).find(".slick-dots li");
          var navimglast = $(slidepak).find("div.mod_slide_nav div.slick-track>div.slick-slide:last-child");
          var prevbtn = $(slidepak).find("button.slick-prev");
          var nextbtn = $(slidepak).find("button.slick-next");
          var slidernav = $(slidepak).find(".mod_slide_nav .slick-track>div");
          //
          if (num < 8) {
              $(dots).click(function() {
                  $(slidernav).removeClass("slick-current");
                  var indexnum = $(dots).index(this) + 1;
                  var checkimg = $(slidepak).find(".mod_slide_nav .slick-track>div:nth-child(" + indexnum + ")");
                  $(checkimg).addClass("slick-current");
              });

              function currmove() {
                  $(slidernav).removeClass("slick-current");
                  var curr = $(slidepak).find(".slick-dots li.slick-active");
                  var currIndex = $(dots).index(curr) + 1;
                  var btncheckimg = $(slidepak).find(".mod_slide_nav .slick-track>div:nth-child(" + currIndex + ")");
                  $(btncheckimg).addClass("slick-current");
              }
              $(prevbtn).click(function() {
                  currmove();
              });
              $(nextbtn).click(function() {
                  currmove();
              });
              // On swipe event
              $(image).on('swipe', function(event, slick, direction) {
                  currmove();
                  // left
              });

          }
      });
  });
});