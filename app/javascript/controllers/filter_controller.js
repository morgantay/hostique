import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static values = { url: String }
  connect() {
  }

  filter(e) {
    console.log(`${this.urlValue}?query=${e.currentTarget.innerText}`)
    e.currentTarget.classList.toggle("active")

    fetch(`${this.urlValue}?query=${e.currentTarget.innerText}`, {
      method: "GET",
      headers:  { "Accept": "text/plain"},
    })
    .then((response) => {
      console.log(response)
      response.text()
    } )
    .then((data) => {
      console.log(data)
    })
  }
}
