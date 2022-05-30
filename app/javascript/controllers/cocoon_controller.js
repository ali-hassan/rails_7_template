import { Controller } from "@hotwired/stimulus"
import jQuery from "jquery"
export default class extends Controller {
  static targets = ["is_cash_adv"]
  connect() {
    
  }
  get get_cash_advance_check() {
    return this.is_cash_advTarget.checked
  }
  on_cash_advance_select(){
    if (this.get_cash_advance_check)
      document.getElementById("credit_infos").classList.remove("hide");
    else
      document.getElementById("credit_infos").classList.add("hide");
  }
}
