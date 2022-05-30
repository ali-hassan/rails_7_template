import { Controller } from "@hotwired/stimulus"
import intlTelInput from 'intl-tel-input'

export default class extends Controller {
  static targets = ["address"]
  connect() {
    intlTelInput(document.querySelector("#user_phone"), { });
    if (typeof(google) != "undefined"){
      this.initMap()    
    } 
  }
  initMap(){
    this.autocomplete = new google.maps.places.Autocomplete(this.addressTarget)
  }
}
