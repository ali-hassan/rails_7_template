import { Controller } from "@hotwired/stimulus"
import intlTelInput from 'intl-tel-input'

export default class extends Controller {
  connect() {
    AOS.init({ duration: 1000 });   
  }
}
