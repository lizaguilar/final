$(document).ready(function() {
  $(".manhattan").hover(function(){
        $(".manhattangif").toggle();
    });

  $(".queens").hover(function(){
    $(".queensgif").toggle();

  });

  $(".westchester").hover(function(){
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

