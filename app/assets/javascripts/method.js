$(function(){
  $('.item-contents__main__form__detail__form-box__form-group1__select-wrap__select-box').change(function(){
    var burdenValue = document.getElementById("item_shipping_burden_id").value;
    if (burdenValue == "" || burdenValue == "---") {
    $(".item-contents__main__form__detail__form-box__form-group2").css("display", "none")
    $(".item-contents__main__form__detail__form-box__form-group6").css("display", "none")
    } else 
      if(burdenValue == "1") { 
    $(".item-contents__main__form__detail__form-box__form-group2").css("display", "block")
    $(".item-contents__main__form__detail__form-box__form-group6").css("display", "none")
    }
    else{
      $(".item-contents__main__form__detail__form-box__form-group6").css("display", "block")
      $(".item-contents__main__form__detail__form-box__form-group2").css("display", "none")
    }    
  });
});
