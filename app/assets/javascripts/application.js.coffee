# Oto Brglez - <otobrglez@gmail.com>

#= require jquery
#= require jquery_ujs
#= require_tree .

$ ->
  $('.terms-link').click ->
    $('.popup-container').toggle()
  $('.close-btn').click ->
    $('.popup-container').hide()
