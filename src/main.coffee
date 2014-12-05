$(document).ready ->
  $.ajax
    dataType: 'jsonp'
    url: 'http://api.meetup.com/2/events?group_id=2406542&status=upcoming&order=time&limited_events=False&desc=false&offset=0&format=json&page=2&fields=&sig_id=14120285&sig=fa577668ef6569dbff70e2c0a6f8f85c35496962'
    success: (data, textStatus, jqXHR) ->
      content = ''
      for result in data.results
        content += '<div class="event"><h3><a href="' + result.event_url + '">' + result.name + '</a></h3>'
        content += '<p class="date">' + new Date(result.time).toLocaleDateString() + '</p>'
        content += '<div class="event-details">' + result.description + '</div></div>'
      $('.meetup-details').html content
      return
  $.ajax
    dataType: 'jsonp'
    url: 'https://www.googleapis.com/youtube/v3/search?key=AIzaSyC5Cha2ywSyaJtOVYVF3t976TgP4-cpvuM&channelId=UCpUgdv1HDGlc0UKm3nIhLPA&part=snippet,id&order=date&maxResults=4'
    success: (data, textStatus, jqXHR) ->
      content = ''
      for result in data.items
        content += '<div class="event"><h3><a href="http://www.youtube.com/watch?v=' + result.id.videoId + '">' + result.snippet.title + '</h3></a>'
        content += '<iframe width="100%" height="400" src="//www.youtube.com/embed/' + result.id.videoId + '" frameborder="0" allowfullscreen></iframe> </div>'
      $('.youtube-details').html content
      return
  return