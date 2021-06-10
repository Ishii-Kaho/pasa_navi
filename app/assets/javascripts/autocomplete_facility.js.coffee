$ ->
  $("#facility_field").autocomplete
    source: (req, res) ->
      $.ajax
        url: "/pasas/autocomplete_facility/" + encodeURIComponent(req.term) + ".json",
        dataType: "json",
        success: (data) ->
          res(data)
    ,
    autoFocus: true,
    delay: 300,
    minLength: 2