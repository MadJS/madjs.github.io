import { h } from 'preact';
import { UpcomingEventItem } from './item';

export const UpcomingEvents = ({ upcomingEvents }) => (
  <section class="events">
    <div class="container">
      <h2>Upcoming Events</h2>
      <div class="meetup-details">
        { upcomingEvents.length > 0 ? upcomingEvents.map((event, index) =>
        <UpcomingEventItem key={index} event={event} />) :
        <h3>None found</h3> }
      </div>
    </div>
  </section>
);
