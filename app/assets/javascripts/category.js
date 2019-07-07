// $(function(){

//   function childform(){
//     var html =
//     `<select class="item-contents__main__form__detail__form-box__form-group3__select-wrap2__select-box" name="product[category_ids]" id="child-form">
//     <option value="">---</option>
//     </select>`
//     return html;
//   };


//   function childselect(child){
//     var html =
//     `<option value="${child.id}">${child.name}</option>`
//     return html;
//   };
  

//   function grandchildform(){
//     var html =
//     `<select class="item-contents__main__form__detail__form-box__form-group3__select-wrap3__select-box" name="product[category_ids]" id="grandchild-form">
//     <option value="">---</option>
//     </select>`
//     return html;
//   };

//   function grandchildselect(grandchild){
//     var html =
//     `<option value="${grandchild.id}">${grandchild.name}</option>`
//     return html;
//   };


//   $(".item-contents__main__form__detail__form-box__form-group3__select-wrap1").on("change",function(){
//     $(".item-contents__main__form__detail__form-box__form-group3__select-wrap2").empty();
//     $(".item-contents__main__form__detail__form-box__form-group3__select-wrap3").empty();
//     var parentValue = document.getElementById("parent-form").value;
//     $.ajax({
//       url: '/items/search',
//       type: "GET",
//       data: {parent_id: parentValue },
//       dataType: 'json'
//     })
//     .done(function(child){
//       html = childform();
//       $(".item-contents__main__form__detail__form-box__form-group3__select-wrap2").append(html);
//       child.forEach(function(child){
//         HTML = childselect(child);
//         $("#child-form").append(HTML); 
//       })
//     })
//   })

//   $(".item-contents__main__form__detail__form-box__form-group3__select-wrap2").on("change",function(){
//     $(".item-contents__main__form__detail__form-box__form-group3__select-wrap3").empty();
//     var childrenValue = document.getElementById("child-form").value;
//     console.log(childrenValue)
//     $.ajax({
//       url: '/items/search',
//       type: "GET",
//       data: {children_id: childrenValue },
//       dataType: 'json'
//     })
//     .done(function(grandchild){
//       html = grandchildform();
//       $(".item-contents__main__form__detail__form-box__form-group3__select-wrap3").append(html);
//       grandchild.forEach(function(grandchild){
//         HTML = grandchildselect(grandchild);
//         $("#grandchild-form").append(HTML); 
//       })
//     })
//   })

// })


$(document).on('turbolinks:load',function(){
  var Selecthtml = `<option value="---">---</option>`;
  function childselect(child){
         var html =
         `<option value="${child.id}">${child.name}</option>`
         return html;
       };

   function grandchildselect(grandchild){
     var html =
   `<option value="${grandchild.id}">${grandchild.name}</option>`
     return html;
   };

  $('#child-form').css("display" , "none");
  $('#grandchild-form').css("display" , "none");
  $(".item-contents__main__form__detail__form-box__form-group3__select-wrap1").on("change",function(){
    var parentValue = document.getElementById("parent-form").value;
    var url = window.location.protocol + '//' + window.location.host + '/items/search'
    if (parentValue == "") {
      $('#child-form').css("display" , "none");
      $('#grandchild-form').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     url,
        data:    { parent_id: parentValue },
        dataType: 'json'
      })
      .done(function(child){
        
        $('#child-form').empty();
        // $('#child-form').parent().css("display", "");
        $("#child-form").append(Selecthtml);
        child.forEach(function(child) {
          var html = childselect(child);
          $("#child-form").append(html);
          
        });
        $('#child-form').css("display" , "");
        $('#grandchild-form').css("display" , "none");
        
      })
    };
  });


  $(".item-contents__main__form__detail__form-box__form-group3__select-wrap2").on("change",function(){
    // $(".item-contents__main__form__detail__form-box__form-group3__select-wrap2").each(function(){
    var childrenValue = document.getElementById("child-form").value;
    var url = window.location.protocol + '//' + window.location.host + '/items/search'
    if (childrenValue == "" || childrenValue == "---") {
      $('#grandchild-form').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     url,
        data:    { parent_id: childrenValue },
        dataType: 'json'
      })
      .done(function(grandchild){
        $('#grandchild-form').empty();
        // $('#grandchild-form').parent().css("display", "");
        $("#grandchild-form").append(Selecthtml);
        grandchild.forEach(function(grandchild) {
          var html = grandchildselect(grandchild);
          $("#grandchild-form").append(html);
        });
        $('#grandchild-form').css("display" , "");
      })
    };
  });
// })
});