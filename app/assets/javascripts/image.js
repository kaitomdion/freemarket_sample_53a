$(function(){
  $('.new_item').on('change', 'input[type="file"]', function(e){
    console.log('hoge');
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $("#file-preview");
        t = this;
        // img = $(`<div class= "add_img"><div class="img_area"><img class="image"></div></div>`);
        // btn_wrapper = $('<div class="btn_wrapper"><a class="btn_edit">編集</a><a class="btn_delete">削除</a></div>');

        // $preview.append(btn_wrapper);
    reader.onload = (function(file) {
      return function(e) {
        // $preview.empty();
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",
          // height: "100px",
          class: "preview",
          title: file.name
        }));
      };
    })(file);
     reader.readAsDataURL(file);
  })
})