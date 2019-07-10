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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image2__view__file"> <img class= "item-contents__main__form__upload-box__image2__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image2__view__btn"> <a class="item-contents__main__form__upload-box__image2__view__btn__left">編集</a><div class="item-contents__main__form__upload-box__image2__view__btn__right">削除</div></div>`)
        .attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image3__view__file"> <img class= "item-contents__main__form__upload-box__image3__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image3__view__btn"> <a class="item-contents__main__form__upload-box__image3__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image3__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image4__view__file"> <img class= "item-contents__main__form__upload-box__image4__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image4__view__btn"> <a class="item-contents__main__form__upload-box__image4__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image4__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image5__view__file"> <img class= "item-contents__main__form__upload-box__image5__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image5__view__btn"> <a class="item-contents__main__form__upload-box__image5__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image5__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image6__view__file"> <img class= "item-contents__main__form__upload-box__image6__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image6__view__btn"> <a class="item-contents__main__form__upload-box__image6__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image6__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image7__view__file"> <img class= "item-contents__main__form__upload-box__image7__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image7__view__btn"> <a class="item-contents__main__form__upload-box__image7__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image7__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image8__view__file"> <img class= "item-contents__main__form__upload-box__image8__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image8__view__btn"> <a class="item-contents__main__form__upload-box__image8__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image8__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image9__view__file"> <img class= "item-contents__main__form__upload-box__image9__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image9__view__btn"> <a class="item-contents__main__form__upload-box__image9__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image9__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image10__view__file"> <img class= "item-contents__main__form__upload-box__image10__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image10__view__btn"> <a class="item-contents__main__form__upload-box__image10__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image10__view__btn__right">削除</a></div>`).attr({
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
        $preview.append($(`<div class="item-contents__main__form__upload-box__image11__view__file"> <img class= "item-contents__main__form__upload-box__image11__view__file__preview" src= "${e.target.result}" title=  "${file.name}"> </div><div class="item-contents__main__form__upload-box__image11__view__btn"> <a class="item-contents__main__form__upload-box__image11__view__btn__left">編集</a><a class="item-contents__main__form__upload-box__image11__view__btn__right">削除</a></div>`).attr({
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

$(document).on('click', '.item-contents__main__form__upload-box__image2__view__btn__right', function(){
    $('#file1').after('<input type="file" id="file_new" name="file">');
    $('#file1').remove();
    $('#file_new').attr('id','file1');
    $(".item-contents__main__form__upload-box__image2__view").html('');
    $(".item-contents__main__form__upload-box__image2").css("display", "none")
    $(".item-contents__main__form__upload-box__image").css("display", "block")
    $("#file1").css("display", "none")
})


$(document).on('click', '.item-contents__main__form__upload-box__image3__view__btn__right', function(){
  $('#file2').after('<input type="file" id="file_new" name="file">');
  $('#file2').remove();
  $('#file_new').attr('id','file2');
  $(".item-contents__main__form__upload-box__image3__view").html('');
  $(".item-contents__main__form__upload-box__image3").css("display", "none")
  $(".item-contents__main__form__upload-box__image2").css("display", "block")
  $("#file2").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image4__view__btn__right', function(){
  $('#file3').after('<input type="file" id="file_new" name="file">');
  $('#file3').remove();
  $('#file_new').attr('id','file3');
  $(".item-contents__main__form__upload-box__image4__view").html('');
  $(".item-contents__main__form__upload-box__image4").css("display", "none")
  $(".item-contents__main__form__upload-box__image3").css("display", "block")
  $("#file3").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image5__view__btn__right', function(){
  $('#file4').after('<input type="file" id="file_new" name="file">');
  $('#file4').remove();
  $('#file_new').attr('id','file4');
  $(".item-contents__main__form__upload-box__image5__view").html('');
  $(".item-contents__main__form__upload-box__image5").css("display", "none")
  $(".item-contents__main__form__upload-box__image4").css("display", "block")
  $("#file4").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image6__view__btn__right', function(){
  $('#file5').after('<input type="file" id="file_new" name="file">');
  $('#file5').remove();
  $('#file_new').attr('id','file5');
  $(".item-contents__main__form__upload-box__image6__view").html('');
  $(".item-contents__main__form__upload-box__image6").css("display", "none")
  $(".item-contents__main__form__upload-box__image5").css("display", "block")
  $(".item-contents__main__form__upload-box").css("height", "225px")
  $("#file5").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image7__view__btn__right', function(){
  $('#file6').after('<input type="file" id="file_new" name="file">');
  $('#file6').remove();
  $('#file_new').attr('id','file6');
  $(".item-contents__main__form__upload-box__image7__view").html('');
  $(".item-contents__main__form__upload-box__image7").css("display", "none")
  $(".item-contents__main__form__upload-box__image6").css("display", "block")
  $("#file6").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image8__view__btn__right', function(){
  $('#file7').after('<input type="file" id="file_new" name="file">');
  $('#file7').remove();
  $('#file_new').attr('id','file7');
  $(".item-contents__main__form__upload-box__image8__view").html('');
  $(".item-contents__main__form__upload-box__image8").css("display", "none")
  $(".item-contents__main__form__upload-box__image7").css("display", "block")
  $("#file7").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image9__view__btn__right', function(){
  $('#file8').after('<input type="file" id="file_new" name="file">');
  $('#file8').remove();
  $('#file_new').attr('id','file8');
  $(".item-contents__main__form__upload-box__image9__view").html('');
  $(".item-contents__main__form__upload-box__image9").css("display", "none")
  $(".item-contents__main__form__upload-box__image8").css("display", "block")
  $("#file8").css("display", "none")
})



$(document).on('click', '.item-contents__main__form__upload-box__image10__view__btn__right', function(){
  $('#file9').after('<input type="file" id="file_new" name="file">');
  $('#file9').remove();
  $('#file_new').attr('id','file9');
  $(".item-contents__main__form__upload-box__image10__view").html('');
  $(".item-contents__main__form__upload-box__image10").css("display", "none")
  $(".item-contents__main__form__upload-box__image9").css("display", "block")
  $("#file9").css("display", "none")
})

$(document).on('click', '.item-contents__main__form__upload-box__image11__view__btn__right', function(){
  $('#file10').after('<input type="file" id="file_new" name="file">');
  $('#file10').remove();
  $('#file_new').attr('id','file10');
  $(".item-contents__main__form__upload-box__image11__view").html('');
  $(".item-contents__main__form__upload-box__image11").css("display", "none")
  $(".item-contents__main__form__upload-box__image10").css("display", "block")
  $(".item-contents__main__form__upload-box__image10__drop-file").css("display", "none")
  $("#file10").css("display", "none")
})
