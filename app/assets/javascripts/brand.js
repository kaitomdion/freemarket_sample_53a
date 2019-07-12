$(document).on('turbolinks:load', function(){

  var search_list = $("#brand-search-result");
  
  function appendUser(brand){
    var html = `<div class='brand-group clearfix' id='brand-group-${brand.id}'>
                    <p class='brand-group__name' data-brand-id="${brand.id}" data-brand-name="${brand.name}">${brand.name}</p>
                </div>`
    search_list.append(html);
}
function appendAddUser(name, id){
  var html = `<div class='brand-group-item clearfix' id='${id}'>
                <input name='item[brand_id]' type='hidden' value='${id}'>
                <p class='brand-group-item__name'>${name}</p>
              </div>`
  return html
}
  $(".item-contents__main__form__detail__form-box__form-group5__select-wrap__select-box").on('keyup', function(){
    var input = $(".item-contents__main__form__detail__form-box__form-group5__select-wrap__select-box").val();

     $.ajax({
       type: 'GET',
       url: '/brands',
       data: { keyword: input },
       datatype: 'json'
     })
     .done(function(brands){
       $('#brand-search-result').empty();
       if (brands.length !== 0) {
          brands.forEach(function(brand){
          appendUser(brand);
      });
    }
  })
  .fail(function() {
  });

})

  $("#brand-search-result").on("click", ".brand-group__name", function() { 
    $("brand-group-item").remove()
    $('.item-contents__main__form__detail__form-box__form-group5__select-wrap__select-box').val(''); 
    $('.item-contents__main__form__detail__form-box__form-group5__select-wrap__select-box').css('display', 'none'); 
    $('.brand-group').css('display', 'none');  
    
    var name = $(this).data('brand-name');
    var id = $(this).data('brand-id');
    var html = appendAddUser(name, id);
    $('#brand-group-item').append(html);
    $(this).parent().remove();
  });
  
})