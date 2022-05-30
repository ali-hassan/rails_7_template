import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["accept_card"]
  connect() {
    var url = document.getElementsByClassName("simple_form")[0].getAttribute("action") + "/edit"
    window.history.pushState('newState', 'Title', url);
  }
  get get_accept_card_check() {
    return this.accept_cardTarget.checked
  }
  on_card_select(){
   if (this.get_accept_card_check)
      document.getElementById("card-info-div").classList.remove("hide");
    else
      document.getElementById("card-info-div").classList.add("hide"); 
  }
}
