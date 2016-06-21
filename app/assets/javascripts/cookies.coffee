testingTurbolinks = (color) ->
  $(".container-fluid").css({"background-color": color})

$(document).on 'turbolinks:load', ->
  testingTurbolinks("#8E8E93")

$ ->
  testingTurbolinks("#ffffff")