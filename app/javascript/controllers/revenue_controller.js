import { Controller } from "@hotwired/stimulus"
import $ from "jquery";

export default class extends Controller {
  selectItem(event) {
    const currentItem = $(event.target)
    if(!currentItem.hasClass('active')){
      currentItem.parent("[data-range-box='parent']").find("[data-range-box='item']").removeClass('active')
      currentItem.parents("[data-controller='revenue']").find("[type='number']").val(currentItem.data('range-id'))
      currentItem.addClass('active')
    }
  }
}
