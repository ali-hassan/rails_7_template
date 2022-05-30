import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    var url = document.getElementsByClassName("simple_form")[0].getAttribute("action")
    window.history.pushState('newState', 'Title', url);
  }
}