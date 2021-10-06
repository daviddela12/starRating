import { Controller } from "@hotwired/stimulus"
import {Rating} from "../packs/rating/rating";

export default class extends Controller {

  connect() {
      const elementForm = document.querySelector("#starRatingForm");
      const elementFormValue = elementForm.querySelector('#review_rating').value;
      new Rating(elementForm, 5, 30, 0.5, Number(elementFormValue));
  }
}
