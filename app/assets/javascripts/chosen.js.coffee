$(document).on 'turbolinks:load', ->
  # enable chosen js
  $('.chosen-select').chosen
    allow_single_deselect: true
    no_results_text: 'oops!! No results matched'
    width: '400px'