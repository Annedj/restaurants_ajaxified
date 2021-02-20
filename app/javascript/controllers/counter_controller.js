import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  // Connect will run every time the page is rendered and the controller is found
  connect() {
    setInterval(this.refresh, 3000);
  }

  refresh = () => {
    console.log('Im getting refreshed!');
    fetch('/restaurants', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.countTarget.innerText = data.restaurants.length;
      });
  }

  // This refresh is an action, in case we want it to be linked to a button!
  // refresh() {
  //   fetch('/restaurants', { headers: { accept: "application/json" } })
  //     .then(response => response.json())
  //     .then((data) => {
  //       this.countTarget.innerText = data.restaurants.length;
  //     });
  // }
}
