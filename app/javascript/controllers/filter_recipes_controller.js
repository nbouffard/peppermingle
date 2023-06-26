import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-recipes"
export default class extends Controller {
  // static targets = ["form", "recipes"];
  connect() {
    // console.log(this.element)
    // console.log(this.formTarget);
    // console.log(this.recipesTarget);
  }
  // send(event) {
  //   // event.preventDefault();
  //   console.log(this.formTarget.action)
  //   // fetch(this.formTarget.action, {
  //   //   method: 'GET',
  //   //   headers: {'Accept': 'application/json'}
  //   //   // body: new FormData(this.formTarget)
  //   // })
  //   // .then(response => response.json())
  //   // .then((data) => {
  //   //   console.log(data)
  //   // })
  }
// }
