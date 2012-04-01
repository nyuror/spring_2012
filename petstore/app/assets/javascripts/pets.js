$(document).ready(function() {
  $("#testjs").click(function(){
    if ($(this).html() != "on") {
      $(this).css("color","red") ;
      $(this).html("on");
    } else {
      $(this).css("color","black") ;
      $(this).html("off");
    }
  });
});