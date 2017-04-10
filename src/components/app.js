import { h, Component } from 'preact';
import fetchJsonp from 'fetch-jsonp';

import { UpcomingEvents } from './upcoming-events';
import { PastEvents } from './past-events';
import { Apparel } from './apparel';

export default class App extends Component {
  state = {
    upcomingEvents: [],
    previousEvents: []
  }

	componentDidMount() {
		// start a timer for the clock:
		this.updateEvents();
    this.updatePastEvents();
	}

	// update the current time
	updateEvents() {
    const upcomingEvents = fetchJsonp(
      'https://api.meetup.com/MadisonJS/events'
    ).then((response) => {
      return response.json();
    }).then(({ data }) => {
      this.setState({
        upcomingEvents: data
      });
    });
	}

  updatePastEvents() {
    const pastEvents = fetch(
      'https://www.googleapis.com/youtube/v3/search?key=AIzaSyC5Cha2ywSyaJtOVYVF3t976TgP4-cpvuM&channelId=UCpUgdv1HDGlc0UKm3nIhLPA&part=snippet,id&order=date&maxResults=4'
    ).then((response) => {
      return response.json();
    }).then(({ items }) => {
      this.setState({
        previousEvents: items
      });
    });
  }

  render(props, { upcomingEvents, previousEvents}) {
    return (
      <div id="app">
        <UpcomingEvents upcomingEvents={ upcomingEvents } />
        <Apparel />
        <PastEvents previousEvents={ previousEvents }/>
      </div>
    );
  }
}
