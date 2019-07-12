// $(document).on('turbolinks:load', function() {
// $(function(){
//   var slider = "#slider"; // スライダー
//   var thumbnailItem = "#thumbnail-list .thumbnail-item"; // サムネイル画像アイテム
  
//   // サムネイル画像アイテムに data-index でindex番号を付与
//   $(thumbnailItem).each(function(){
//    var index = $(thumbnailItem).index(this);
//    $(this).attr("data-index",index);
//   });
  
//   // スライダー初期化後、カレントのサムネイル画像にクラス「thumbnail-current」を付ける
//   // 「slickスライダー作成」の前にこの記述は書いてください。
//   $(slider).on('init',function(slick){
//    var index = $(".slide-item.slick-slide.slick-current").attr("data-slick-index");
//    $(thumbnailItem+'[data-index="'+index+'"]').addClass("thumbnail-current");
//   });

//   //slickスライダー初期化  
//   $(slider).slick({
//     autoplay: true,
//     arrows: false,
//     fade: true,
//     infinite: false //これはつけましょう。
//   });
//   //サムネイル画像アイテムをクリックしたときにスライダー切り替え
//   $(thumbnailItem).on('click',function(){
//     var index = $(this).attr("data-index");
//     $(slider).slick("slickGoTo",index,false);
//   });
  
//   //サムネイル画像のカレントを切り替え
//   $(slider).on('beforeChange',function(event,slick, currentSlide,nextSlide){
//     $(thumbnailItem).each(function(){
//       $(this).removeClass("thumbnail-current");
//     });
//     $(thumbnailItem+'[data-index="'+nextSlide+'"]').addClass("thumbnail-current");
//   });
// });

// });

$(document).on('turbolinks:load', function() {
  //始めにactionを追加
  $('.owl-dots .owl-dot:first-child').addClass('active');
  $('.owl-dots .owl-dot:first-child').css({'opacity':'1','pointer':'default'});
  //hover時に色変更&activeクラス追加
  $('.owl-dot').hover(function(){
    $('.active').css({'opacity':'','pointer':''})
    $('.active').removeClass('active');
    $(this).addClass('active');
    $(this).css({'opacity':'1','pointer':'default'});
  });
  //スライド
  $('.owl-stage').slick({
    autoplay: false,
    Speed: 3000,
    arrows: false,
    dots: false,
    dotsClass: 'owl-dots',
    pauseOnDotsHover: true,
    infinite: true,
  });

  $('.owl-dot').on('mouseover', function(e){
    var $currTarget = $(e.currentTarget);
    index = $('.owl-dot').index(this);
    slickObj = $('.owl-stage').slick('getSlick');
    slickObj.slickGoTo(index);    // アニメーション中でも切り替える
  });
  //画像が４枚よりも多い場合
  if($('.owl-dot').length > 4) {
    $('.owl-dot').css({'width':'60px','height':'60px'});
  }
});