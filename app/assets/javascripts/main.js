var ready = function(){

  // $('.week').click(function() {
  //   var weekId = parseInt(this.id.slice(4, this.id.length))
  //   console.log(weekId)
  // })



  function weekClick() {
    $('.week').click(function(){
      $(this).off('click')
      $(this).append("<div class='tooltip'><button class='close'>X</button></div>");
      $('.close').click(function(){
        $week = $(this).parents('.week')
        $week.on('click', weekClick)
        $tooltip = $(this).parent('.tooltip')
        $tooltip.remove()
      });
    });
  }
  
  weekClick();


}



$(function() {
  ready();
});

