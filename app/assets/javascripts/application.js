//= require rails-ujs
//= require jquery
//= require_tree .


$(window).on('load', function() {
  console.log("i'm here")
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
