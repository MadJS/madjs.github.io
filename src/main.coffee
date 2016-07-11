$(document).ready ->
  console.log "Loading meetup events"
  $.ajax
    dataType: 'jsonp'
    url: 'https://api.meetup.com/MadisonJS/events'
    success: (results, textStatus, jqXHR) ->
      content = ''
      for result in results.data
        continue if /Topic TBD/.test result.name
        content += '<div class="event"><h3><a href="' + result.link + '">' + result.name + '</a></h3>'
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
        content += '<div class="event"><h3><a href="https://www.youtube.com/watch?v=' + result.id.videoId + '">' + result.snippet.title + '</h3></a>'
        content += '<iframe width="100%" height="400" src="https://www.youtube.com/embed/' + result.id.videoId + '" frameborder="0" allowfullscreen></iframe> </div>'
      $('.youtube-details').html content
      return
  return
