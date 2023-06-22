import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-recipes"
export default class extends Controller {
  static targets = ["form", "recipes", "input"];
  connect() {
    // console.log('hello')
    // console.log(this.formTarget);
    // console.log(this.recipesTarget);
  }

  update() {
    console.log(this.inputTarget.innerText)
  }
}
