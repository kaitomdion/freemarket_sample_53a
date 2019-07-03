$(function(){
  $('.new_item').on('change', 'input[type="file"]', function(e){
    console.log('hoge');
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $("#file-preview");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
      };
    })(file);
     reader.readAsDataURL(file);
  })
})