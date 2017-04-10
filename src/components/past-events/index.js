import { h } from 'preact';
import { PreviousEventItem } from './item';

export const PastEvents = ({ previousEvents }) => (
  <section class="youtube">
    <div class="container">
      <h2>Previous Events</h2>
      <div class="youtube-details">
        { previousEvents.length > 0 ? previousEvents.map((event, index) =>
        <PreviousEventItem key={index} event={event} />) :
        <h3>None found</h3> }
      </div>
    </div>
  </section>
);
