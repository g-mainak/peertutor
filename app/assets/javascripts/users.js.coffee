# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".picture").click (e) ->
    offset = $(this).offset()
    $("#user_posx").val(e.pageX - offset.left)
    $("#user_posy").val(e.pageY - offset.top)
