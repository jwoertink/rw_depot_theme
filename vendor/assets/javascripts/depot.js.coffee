logger = (msg) ->
  window.console.log(msg) if "console" in window
  
$ ->
  logger "testing logger"