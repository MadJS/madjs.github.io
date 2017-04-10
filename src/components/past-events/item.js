import { h, Component } from 'preact';

export const PreviousEventItem = ({ event }) => (
  <div class="event">
    <h3>
      <a href={`https://www.youtube.com/watch?v=${event.id.videoId}`}>{ event.snippet.title }</a>
    </h3>
    <iframe
      width="100%" height="400"
      src={`https://www.youtube.com/embed/${event.id.videoId}`}
      frameborder="0"
      allowfullscreen></iframe>
  </div>
);
