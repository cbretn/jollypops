//= require rails-ujs
//= require jquery
//= require_tree .

window.onload = function() {
  const tl = new TimelineLite({ delay: 1 }),
    firstBg = document.querySelectorAll(".text__first-bg"),
    secBg = document.querySelectorAll(".text__second-bg"),
    word = document.querySelectorAll(".text__word");

  tl
    .to(firstBg, 0.6, { scaleX: 1 })
    .to(secBg, 0.6, { scaleX: 1 })
    .to(word, 0.1, { opacity: 1 }, "-=0.1")
    .to(firstBg, 0.6, { scaleX: 0 })
    .to(secBg, 0.6, { scaleX: 0 });
};

$(window).on('load', function() {
  $(".post-module").hover(function() {
    $(this)
      .find(".description")
      .stop()
      .animate(
      {
        height: "toggle",
        opacity: "toggle"
      },
      300
    );
  });
});

