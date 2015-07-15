var ready = function(){
  $('.week').on('click', weekClick)
}

function isEmpty($element){
  return($element.html() ==='')
}

function weekClick(){
  if( isEmpty( $(this) ) ) {
    $(this).append("<div class='tooltip'><button class='close'>X</button></div>");
    $('.close').click(function(event){
      event.stopPropagation();
      $week = $(this).parent().parent()
      $week.empty();
    })
  } else {
    console.log('not empty')

  }
}

$(function() {
  ready();
});

