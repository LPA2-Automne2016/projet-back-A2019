App.counters = App.cable.subscriptions.create "CountersChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)
    document.getElementById("counter"+data.id).innerHTML = data.value