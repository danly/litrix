var ready = function(){
  $('.week').on('click', weekClick)


}

function isEmpty($element){
  return($element.html() ==='')
}

function weekClick(){
  if( isEmpty( $(this) ) ) {
    that = this
    $(this).append("<div class='tooltip'><button class='close'>X</button></div>");

    // need to do a get to add data
    weekId = this.id.slice(4,this.id.length)
    console.log(weekId)

    var promise = $.getJSON("/weeks/"+weekId)
    //If success
    promise.done(function( data ){
      data.forEach(function(milestone, i) {
        //append each milestone for that week
        $tooltip = $(that).children('.tooltip')
        $tooltip.append("<a href='/milestones/"+milestone.id+"'' data-milestone-id='"+milestone.id+"' class='lineItem'>"+milestone.title+"</a><br>")


        $lineItem = $tooltip.children('.lineItem')
        $lineItem.hover(function(event){
          event.stopPropagation();
          milestoneId = $(this).data('milestone-id')
          milestoneId
        })
      })
    })

    //If no data failure
    promise.fail(function(errors){
      $(that).children('.tooltip').append("No Personal Milestones")
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

