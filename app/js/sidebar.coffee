$ ->
  $("#right-menu").sidr(
    name: "sidr-right"
    side: "right"
    )

  $("#close").on 'click', ->
    $.sidr("close", "sidr-right")
