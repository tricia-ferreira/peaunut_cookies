testingTurbolinks = (color) ->
  $(".container-fluid").css({"background-color": color})

$(document).on 'turbolinks:load', ->
  console.log("It works on each visit!")
  testingTurbolinks("#8E8E93")