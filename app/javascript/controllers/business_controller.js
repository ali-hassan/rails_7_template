import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["is_different_dba", "address", "open_fo_bankruptcy"]
  connect() {
    var url = document.getElementsByClassName("simple_form")[0].getAttribute("action") + "/edit"
    window.history.pushState('newState', 'Title', url);
    if (typeof(google) != "undefined"){
      this.initMap()    
    }
  }
  get get_dba() {
    return this.is_different_dbaTarget.checked
  }
  get get_bankruptcy() {
    return this.open_fo_bankruptcyTarget.checked
  }
  
  on_dba_select(){
    if (this.get_dba)
      document.getElementById("dba-div").classList.remove("hide");
    else
      document.getElementById("dba-div").classList.add("hide");
  }
  on_bankruptcy_select(){
    if (this.get_bankruptcy)
      document.getElementById("bankruptcy-reason-div").classList.remove("hide");
    else
      document.getElementById("bankruptcy-reason-div").classList.add("hide");
  }
  initMap(){
    if (this.hasAddressTarget)
      this.autocomplete = new google.maps.places.Autocomplete(this.addressTarget)
  }
  
}
