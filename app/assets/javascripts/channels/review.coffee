App.review = App.cable.subscriptions.create "ReviewChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append(data.message)

  comment: (msg)->
    @perform 'comment', message: msg

$(document).on 'keypress', '#chat-speak', (event) ->
  if event.keyCode is 13
    App.review.comment(event.target.value)
    event.target.value = ""
    event.preventDefault()