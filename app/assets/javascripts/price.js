$(document).on('turbolinks:load',function(){
    var input = $("#item_price").val();
    item_price = parseInt(input);
    if (item_price >= 300 && item_price <= 9999999){
      var fee = Math.floor(item_price * 0.1);
      $(".item-contents__main__form__price__form-box__sell-price__form-group2__right").html("¥" + fee);
      var profit =item_price - fee;
      $(".item-contents__main__form__price__form-box__sell-price__form-group3__right").html("¥" + profit);
    } else {
      $(".item-contents__main__form__price__form-box__sell-price__form-group2__right").html("-");
      $(".item-contents__main__form__price__form-box__sell-price__form-group3__right").html("-"); 
    }
  $('#item_price').on('keyup', function(e){
    e.preventDefault();
    var input = $("#item_price").val();
    item_price = parseInt(input);
    if (item_price >= 300 && item_price <= 9999999){
      var fee = Math.floor(item_price * 0.1);
      $(".item-contents__main__form__price__form-box__sell-price__form-group2__right").html("¥" + fee);
      var profit =item_price - fee;
      $(".item-contents__main__form__price__form-box__sell-price__form-group3__right").html("¥" + profit);
    } else {
      $(".item-contents__main__form__price__form-box__sell-price__form-group2__right").html("-");
      $(".item-contents__main__form__price__form-box__sell-price__form-group3__right").html("-"); 
    }
  });
});

