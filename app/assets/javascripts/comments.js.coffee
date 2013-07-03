client = new Faye.Client('/faye')

client.subscribe '/comments', (payload)->
  $('#comments').append("<li>#{payload.message}</li>")

window.client = client