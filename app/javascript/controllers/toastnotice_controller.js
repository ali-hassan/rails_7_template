import { Controller } from "@hotwired/stimulus"
import { Toast } from 'bootstrap'
import $ from "jquery"

export default class extends Controller {
  connect() {
    const toaster = Toast.getOrCreateInstance($("[data-notice-toast]"));
    toaster.show();
  }
}