$(document).on('turbolinks:load', function(){
  // 既存のファイルを初期値に設定しておく、なければ何も表示しない
    $(function(){
      if((default_image) !== null){
        var preview = document.getElementById("preview");
        preview.insertAdjacentHTML('afterbegin', '<img src="' + default_image + '">');
      }
    });

  //画像ファイルプレビュー表示のイベント追加 fileを選択時に発火するイベントを登録
  $('form').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".preview");
        t = this;

    // ファイル読み込みが完了した際のイベント登録
    reader.onload = (function(file) {
      return function(e) {
        //既存のプレビューを削除
        $preview.empty();
        // .prevewの領域の中にロードした画像を表示するimageタグを追加
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "150px",
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });

  $(function() {
    $('.linked_info a').hover(
      function() {
        $(this).parents('.linked_info').css('background-color','#ee609c');
      },
      function() {
        $(this).parents('.linked_info').css('background-color','#4DD4D0');
      }
    )
  });

  $(function() {
    $('.photos').hover(
      function() {
        $(this).find('.options').addClass('text-active');
        $(this).find('img').addClass('opacity_control');
      },
      function() {
        $(this).find('.options').removeClass('text-active');
        $(this).find('img').removeClass('opacity_control');
      }
    )
  });

// // ScrollIn effect
  $(function(){
    $(window).scroll(function (){
      $('.fadein').each(function(){
        var elemPos = $(this).offset().top;
        var scroll = $(window).scrollTop();
        var windowHeight = $(window).height();
        if (scroll > elemPos - windowHeight){
            $(this).addClass('scrollin');
        }
      });
    });
  });


  $(function() {
    $('.unsplash').hover(
      function() {
        $(this).find('.photographer').fadeIn();
      },
      function() {
        $(this).find('.photographer').fadeOut();
      }
    )
  });

});
