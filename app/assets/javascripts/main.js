$(document).ready(function() {
  $(".manhattan_home_link").hover(function(){
        $(".manhattangif").toggle();
    });

  $(".queens_home_link").hover(function(){
    $(".queensgif").toggle();

  });

  $(".westchester_home_link").hover(function(){
    $(".westchestergif").toggle();

  });

  $(".bk_home_link").hover(function(){
    $(".bkgif").toggle();
  });

  $(".bx_home_link").hover(function(){
    $(".bxgif").toggle();
  });

  $('.slider').slick({
  dots: true,
  infinite: true,
  speed: 500,
  fade: true,
  cssEase: 'linear'
  });
});

