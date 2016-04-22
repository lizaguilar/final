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

  $('.slider').slick({
  dots: true,
  infinite: true,
  speed: 500,
  fade: true,
  cssEase: 'linear'
  });
});

