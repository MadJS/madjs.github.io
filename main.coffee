$(document).ready ->
  $.ajax
    dataType: 'jsonp'
    url: 'http://api.meetup.com/2/events?group_id=2406542&status=upcoming&order=time&limited_events=False&desc=false&offset=0&format=json&page=2&fields=&sig_id=14120285&sig=fa577668ef6569dbff70e2c0a6f8f85c35496962'
    success: (data, textStatus, jqXHR) ->
      content = '';
      for result in data.results
        content += '<h2><a href="' + result.event_url + '">' + result.name + '</a></h2>'
        content += '<p>' + new Date(result.time).toLocaleDateString() + '</p>'
        content += result.description
      $('.meetup-details').html(content)
