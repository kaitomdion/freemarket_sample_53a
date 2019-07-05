$(function(){
  $('.item-contents__main__form__upload-box__image').on('change', 'input[type="file"]', function(e){
    var imagefile =$(".item-contents__main__form__upload-box__image")
    var imagefile2 =$(".item-contents__main__form__upload-box__image2")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image2__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile.css({
          'display': `none`
        })
        imagefile2.css({
          'display': `block`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image2').on('change', 'input[type="file"]', function(e){
    var imagefile2 =$(".item-contents__main__form__upload-box__image2")
    var imagefile3 =$(".item-contents__main__form__upload-box__image3")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image3__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile2.css({
          'display': `none`
        })
        imagefile3.css({
          'display': `block`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image3').on('change', 'input[type="file"]', function(e){
    var imagefile3 =$(".item-contents__main__form__upload-box__image3")
    var imagefile4 =$(".item-contents__main__form__upload-box__image4")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image4__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile3.css({
          'display': `none`
        })
        imagefile4.css({
          'display': `block`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image4').on('change', 'input[type="file"]', function(e){
    var imagefile4 =$(".item-contents__main__form__upload-box__image4")
    var imagefile5 =$(".item-contents__main__form__upload-box__image5")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image5__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile4.css({
          'display': `none`
        })
        imagefile5.css({
          'display': `block`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image5').on('change', 'input[type="file"]', function(e){
    var height =$(".item-contents__main__form__upload-box")
    var imagefile5 =$(".item-contents__main__form__upload-box__image5")
    var imagefile6 =$(".item-contents__main__form__upload-box__image6")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image6__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile5.css({
          'display': `none`
        })
        imagefile6.css({
          'display': `block`
        })
        height.css({
          'height': `450px`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image6').on('change', 'input[type="file"]', function(e){
    var height =$(".item-contents__main__form__upload-box")
    var imagefile6 =$(".item-contents__main__form__upload-box__image6")
    var imagefile7 =$(".item-contents__main__form__upload-box__image7")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image7__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile6.css({
          'display': `none`
        })
        imagefile7.css({
          'display': `block`
        })
        height.css({
          'height': `450px`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image7').on('change', 'input[type="file"]', function(e){
    var height =$(".item-contents__main__form__upload-box")
    var imagefile7 =$(".item-contents__main__form__upload-box__image7")
    var imagefile8 =$(".item-contents__main__form__upload-box__image8")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image8__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile7.css({
          'display': `none`
        })
        imagefile8.css({
          'display': `block`
        })
        height.css({
          'height': `450px`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image8').on('change', 'input[type="file"]', function(e){
    var height =$(".item-contents__main__form__upload-box")
    var imagefile8 =$(".item-contents__main__form__upload-box__image8")
    var imagefile9 =$(".item-contents__main__form__upload-box__image9")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image9__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile8.css({
          'display': `none`
        })
        imagefile9.css({
          'display': `block`
        })
        height.css({
          'height': `450px`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image9').on('change', 'input[type="file"]', function(e){
    var height =$(".item-contents__main__form__upload-box")
    var imagefile9 =$(".item-contents__main__form__upload-box__image9")
    var imagefile10 =$(".item-contents__main__form__upload-box__image10")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image10__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile9.css({
          'display': `none`
        })
        imagefile10.css({
          'display': `block`
        })
        height.css({
          'height': `450px`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})

$(function(){
  $('.item-contents__main__form__upload-box__image10').on('change', 'input[type="file"]', function(e){
    var height =$(".item-contents__main__form__upload-box")
    var imagefile10 =$(".item-contents__main__form__upload-box__image10")
    var imagefile11 =$(".item-contents__main__form__upload-box__image11")
    var file = e.target.files[0];
        reader = new FileReader();
        $preview = $(".item-contents__main__form__upload-box__image11__view");
        t = this;
    reader.onload = (function(file) {
      return function(e) {
        $preview.append($('<img><t">編集</a><a class="btn_delete">削除</a></div>').attr({
          src: e.target.result,
          width: "150px",       
          class: "preview",
          title: file.name
        }));
        imagefile10.css({
          'display': `none`
        })
        imagefile11.css({
          'display': `block`
        })
        height.css({
          'height': `450px`
        })
      };
    })(file);
     reader.readAsDataURL(file);
  })
})