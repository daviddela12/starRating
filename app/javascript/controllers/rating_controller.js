import { Controller } from "@hotwired/stimulus"
import {Rating} from "../packs/rating/rating";

export default class extends Controller {

  connect() {
      const elementSummary = document.querySelector("#starRatingSummary");
      const elementSummaryValue = document.querySelector("#starRatingSummaryValue").value;
      new Rating(elementSummary, 5, 35, 0.5, Number(elementSummaryValue), true);

      const elementForm = document.querySelector("#starRatingForm");
      const elementFormValue = elementForm.querySelector('#review_rating').value;
      new Rating(elementForm, 5, 30, 0.5, Number(elementFormValue));
  }
}
