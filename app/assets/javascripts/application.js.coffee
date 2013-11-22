# Oto Brglez - <otobrglez@gmail.com>

#= require jquery
#= require jquery_ujs
#= require_tree .

$ ->
  $('.terms-link').click ->
    $('#terms-popup').toggle()
  $('.privacy-link').click ->
    $('#privacy-popup').toggle()
  $('.close-btn').click ->
    $('.popup-container').hide()
