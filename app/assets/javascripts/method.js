$(function(){
  // function buildHTML(item) {
  //   var html = ` <div class = "item-contents__main__form__detail__form-box__form-group2__label">
  //                   配送の方法
  //                   <span class = "item-contents__main__form__detail__form-box__form-group2__label__action">
  //                     必須
  //                   </span>
  //                 </div>
  //                 <div class = "item-contents__main__form__detail__form-box__form-group2__select-wrap">
  //                 <%= f.select :shipping_method_id, ShippingMethod.all.collect {|s| [s.name_i18n, s.id]}, {prompt: "---"}, {class: 'item-contents__main__form__detail__form-box__form-group2__select-wrap__select-box'} %>
  //                 </div>`
  //   return html;
  // }

  $('.item-contents__main__form__detail__form-box__form-group1__select-wrap__select-box').change(function(e){
    $(".item-contents__main__form__detail__form-box__form-group2").css("display", "block")
    // e.preventDefault();
    // var formData = new FormData(this);
    // var url = $(this).attr('action')
    // $.ajax({
      // url: url,
      // type: "GET",
      // data: formData,
      // dataType: 'json',
      // processData: false,
      // contentType: false
  // })
  // .done(function(data){
  //   var html = buildHTML(data);
  //   $('.item-contents__main__form__detail__form-box__form-group2').append(html)
  // });
});
// $('.item-contents__main__form__detail__form-box__form-group1__select-wrap__select-box').change(function(e){
//   $(".item-contents__main__form__detail__form-box__form-group2").css("display", "none")
// });
});
// $(function(){
//   $(document).on('change', '#item_shipping_burden_id', function(){
//     var burden = $(this).val();
//     if ($(this).parent().next()[0] != null){
//       $(this).parent().nextAll().remove();
//     }
//     if(burden > 0) {
//       $.ajax({
//         type: 'GET',
//         url: '/items/new',
//         data: {id: burden},
//         dataType: 'json'
//       })
//       .done(function(shipping_burden){
//         if(shipping_burden.length > 0){
//           addMethod(shipping_burden)
//         }
//       });
//     }
//   });
// });
// function addMethod(shipping_burden){
//   var html = ''
//   shipping_burden.forEach(function(shipping_method){
//     var html2 = "<option value="+ shipping_method.id + ">" + shipping_method.name + "</option"
//     html += html2;
//   })
//   var html3 = `<div class = "item-contents__main__form__detail__form-box__form-group2">
//   <div class = "item-contents__main__form__detail__form-box__form-group2__label">
//     配送の方法
//     <span class = "span.item-contents__main__form__detail__form-box__form-group2__label__action">
//       必須
//     </span>
//   </div>
//   <div class = "item-contents__main__form__detail__form-box__form-group2__select-wrap">
//   </div>
//     <select class= 'item-contents__main__form__detail__form-box__form-group2__select-wrap__select-box'> 
// </div>` + html
// $("#item_shipping_burden_id").append(html3)
// }
