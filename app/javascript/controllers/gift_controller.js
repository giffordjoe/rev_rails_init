import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gift"
export default class extends Controller {
  static targets = ["template", "container"]

  connect() {
  }

  addGift(event) {
    event.preventDefault()
    const content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
    this.containerTarget.insertAdjacentHTML('beforeend', content)
  }

  removeGift(event) {
    event.preventDefault()
    const item = event.target.closest(".nested-fields")
    if (item.dataset.newRecord === "true") {
      item.remove()
    } else {
      item.querySelector("input[name*='_destroy']").value = 1
      item.style.display = "none"
    }
  }
}
