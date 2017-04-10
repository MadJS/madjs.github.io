import { h } from 'preact';

export const UpcomingEventItem = ({ event }) => (
  <div class="event">
    <h3>
      <a href={event.link}>{ event.name }</a>
    </h3>
    <p class="date">
      { new Date(event.time).toLocaleDateString() }
    </p>
    <div class="event-details" dangerouslySetInnerHTML={{ __html: event.description }}>
    </div>
  </div>
);
