var ready = function(){
  $('.week').on('click', weekClick)


}

function isEmpty($element){
  return($element.html() ==='')
}

function weekClick(){
  if( isEmpty( $(this) ) ) {
    $(this).append("<div class='tooltip'><button class='close'>X</button></div>");

    // need to do a get to add data
    weekId = this.id.slice(4,this.id.length)
    console.log(weekId)

    var promise = $.getJSON("/milestones/"+weekId)
    //If success
    promise.done(function( data ){
      $('.tooltip').append(data.title)
    })
    //If no data failure
    promise.fail(function(){
      $('.tooltip').append("No Personal Milestones")
    })

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

