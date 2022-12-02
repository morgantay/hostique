import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {

  static targets = ["dropdown"]

  connect() {
  }

  drop(e) {
    this.dropdownTarget.classList.toggle("show")
  }
}
