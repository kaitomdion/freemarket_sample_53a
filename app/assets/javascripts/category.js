$(document).on('turbolinks:load',function(){
  var new_url = window.location.protocol + '//' + window.location.host + '/items/new' 
  if(location.href == new_url){
  $('#child-form').css("display" , "none");
  $('#grandchild-form').css("display" , "none");
  }
     

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

  $(".item-contents__main__form__detail__form-box__form-group3__select-wrap1").on("change",function(){
    var parentValue = document.getElementById("parent-form").value;
    if (parentValue == "") {
      $('#child-form').css("display" , "none");
      $('#grandchild-form').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     '/items/search',
        data:    { parent_id: parentValue },
        dataType: 'json'
      })
      .done(function(child){
        
        $('#child-form').empty();
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
    var childrenValue = document.getElementById("child-form").value;
    if (childrenValue == "" || childrenValue == "---") {
      $('#grandchild-form').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     '/items/search',
        data:    { parent_id: childrenValue },
        dataType: 'json'
      })
      .done(function(grandchild){
        $('#grandchild-form').empty();
        $("#grandchild-form").append(Selecthtml);
        grandchild.forEach(function(grandchild) {
          var html = grandchildselect(grandchild);
          $("#grandchild-form").append(html);
        });
        $('#grandchild-form').css("display" , "");
        
      })
    };
  });
$(".item-contents__main__form__detail__form-box__form-group3__select-wrap3").on("change",function(){
  var grandchildrenValue = document.getElementById("grandchild-form").value;
    if (grandchildrenValue == "" || grandchildrenValue == "---") {
      $('.item-contents__main__form__detail__form-box__form-group5').css("display" , "none");
    }else {
      $('.item-contents__main__form__detail__form-box__form-group5').css("display" , "block");
    }
  })
});