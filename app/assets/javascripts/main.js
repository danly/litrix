var ready = function(){
  $('.week').on('click', weekClick)

}

function isEmpty($element){
  return($element.html() ==='')
}

function weekClick(){
  if( isEmpty( $(this) ) ) {
    that = this
    var idOfWeek = this.id.slice(4, this.id.length)
    $(this).append("<div class='tooltip'><button class='close'>X</button><a href='/milestones/new/"+idOfWeek+"' class='newMilestone'>Add Milestone</a></div>");

    // need to do a get to add data
    weekId = this.id.slice(4,this.id.length)
    console.log(weekId)

    var promise = $.getJSON("/weeks/"+weekId, function (data){
      console.log(data)
    })
    //If success
    promise.done(function( data ){
      if(data.length !== 0) {
        $tooltip = $(that).children('.tooltip')
        $tooltip.append("<h3>Your Milestones</h3>")

        data.forEach(function(milestone, i) {
          //append each milestone for that week
          $tooltip.append("<p class='lineItem'><a href='/milestones/"+milestone.id+"' data-milestone-id='"+milestone.id+"'>"+milestone.title+"</a><span class='toolNote'>"+milestone.note+"</span></p>")

          $lineItem = $tooltip.children('.lineItem')
          $lineItem.hover(function(event){
            //mouseenter
            event.stopPropagation();
            $toolNote = $(this).children('.toolNote')
            $toolNote.fadeIn()
          }, function(event){
            //mouseleave
            event.stopPropagation();
            $toolNote = $(this).children('.toolNote')
            $toolNote.fadeOut()
          })
        })
      } else {
          $(that).children('.tooltip').append("<h3>Your Milestones</h3>").append("No Personal Milestones")
      }
    })

    //If no data failure
    promise.fail(function(){
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

