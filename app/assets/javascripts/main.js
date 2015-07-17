var ready = function(){
  $('.week').on('click', weekClick)
  $('.datasetsKey').one('click', getDatasets)
}



function getDataContent(){
  that = this
  var setName = $(this).text()
  $('div .dataItem').removeClass('dataItem').attr('data-set', '')
  var promise = $.getJSON("/set/"+setName)
  promise.done(function(data) {
    for (var i = 0; i < data.length; i++) {
      var item = data[i]
      var weekOfYear = getWeekFromDay(item.date)
      var specificWeek = item.age*52 + weekOfYear
      $('#week' + specificWeek).addClass("dataItem").attr('data-set', setName)
    };
  })
}



function getWeekFromDay(day){
    var now = new Date(day);
    var start = new Date(now.getFullYear(), 0, 0);
    var diff = now - start;
    var oneDay = 1000 * 60 * 60 * 24;
    var day = Math.floor(diff / oneDay);
    var week = Math.floor(day/7);
    return week;
}



function getDatasets(){
  that = this
  var promise = $.getJSON("/datasets")
  promise.done(function(data){
    for (var i = 0; i < data.length; i++) {
      title = data[i].title
      $(that).append("<div class='datasetItem'>"+title+"<div>")
    };
    $('.datasetItem').on('click', getDataContent)
  })
  promise.fail(function(){
    console.log('failure to get data from datasets')
  })
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
    dataset = $(this).attr('data-set')
    console.log(weekId)

    getPersonalMilestones(weekId)
    if(!!dataset) {
      getDatasetMilestones(weekId, dataset)
    }
    $('.close').click(function(event){
      event.stopPropagation();
      $week = $(this).parent().parent()
      $week.empty();
    })
  } else {
    console.log('not empty')
  }
}


function getDatasetMilestones(weekId, dataset){
  var promise = $.getJSON("/set/"+dataset)

  promise.done(function (data) {
    if(data.length !== 0) {
      $tooltip = $(that).children('.tooltip')
      $tooltip.append("<h3>Other Milestones</h3>")

      data.forEach(function (item, i) {
        var dataWeek = getWeekFromDay(item.date)
        var specificWeek = item.age*52 + dataWeek
        if(parseInt(weekId) === specificWeek){
          $tooltip.append("<p class='lineItem'>"+item.itemTitle+"<br><span class='toolNote'>"+item.note+"</span></p>")

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
        }
      })
    } else {
      $(that).children('.tooltip').append("<h3>Other Milestones</h3>").append("None")
    }
  })

  promise.fail(function(){
    $(that).children('.tooltip').append("<h3>Other Milestones</h3>").append("None")
  })
}



function getPersonalMilestones(weekId){
  var promise = $.getJSON("/weeks/"+weekId, function (data){
    console.log(data)
  })
  //If success
  promise.done(function( data ){
    if(data.length !== 0) {
      $tooltip = $(that).children('.tooltip')
      $tooltip.append("<h3>Your Milestones</h3>")

      data.forEach(function (milestone, i) {
        //append each milestone for that week
        $tooltip.append("<p class='lineItem'><a href='/milestones/"+milestone.id+"' data-milestone-id='"+milestone.id+"'>"+milestone.title+"</a><br><span class='toolNote'>"+milestone.note+"</span></p>")

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
}







$(function() {
  ready();
});

