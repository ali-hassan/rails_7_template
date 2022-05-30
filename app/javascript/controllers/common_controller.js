import {
  Controller
} from "@hotwired/stimulus"
import intlTelInput from 'intl-tel-input'
import IMask from 'imask';

export default class extends Controller {
  connect() {
    intlTelInput(document.querySelector('input[type="tel"]'), {});
    IMask(
      document.querySelector('input[type="tel"]'), {
        mask: '+{1}(000) 000-0000'
      });
  }
}