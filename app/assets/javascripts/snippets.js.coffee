# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("#accordion").accordion()

# アコーディオンの設定
$ ->
  $("#accordion").accordion
    header: "h3"
    collapsible: true
    autoHeight: false
    active: 10

# ツールチップ
$ ->
  $('a[title], button[title]').tooltip()


# メッセージの消えるタイミング
$ ->
  setTimeout (->
    $("#notice").fadeOut "slow"
  ), 1000
