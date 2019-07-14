$(document).on('turbolinks:load',function(){
  $('.top-header__container__navi__left__l__category__list__title__link').on('mouseover', function(){
    $('.top-header__container__navi__left__l__category__list__search').show();
  });

  $('.top-header__container__navi__left__l__category__list__search, .top-header__container__navi__left__l__category__list').on('mouseleave', function(){
    $('.top-header__container__navi__left__l__category__list__search').hide();
  });

  $(document).on('mouseover', '.top-header__container__navi__left__l__category__list__search__li', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail').show();
  });

  $(document).on('mouseleave', '.top-header__container__navi__left__l__category__list__search__li', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail').hide();
  });

  $(document).on('mouseover', '.top-header__container__navi__left__l__category__list__search__li__detail__list', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail__list__de').show();
  });

  $(document).on('mouseleave', '.top-header__container__navi__left__l__category__list__search__li__detail__list', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail__list__de').hide();
  });

  $('.top-header__container__navi__left__l__category__bland__title__link').on('mouseover', function(){
    $('.top-header__container__navi__left__l__category__bland__search').show();
  });

  $('.top-header__container__navi__left__l__category__bland__search, .top-header__container__navi__left__l__category__bland').on('mouseleave', function(){
    $('.top-header__container__navi__left__l__category__bland__search').hide();
  });

});
