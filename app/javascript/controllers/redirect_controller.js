import { Controller } from "@hotwired/stimulus"
import $ from 'jquery'

export default class extends Controller {
  connect() {
    setTimeout(()=> {
      window.location = $("[data-redirect-url-value]").data("redirect-url-value")
    }, 1000);
   }
}