import { Controller } from "@hotwired/stimulus"
import {Rating} from "../packs/rating/rating";

export default class extends Controller {
  static targets = [ "reviewId" ]

  connect() {
      const review = document.querySelector('div#starRatingReview'+this.reviewIdTarget.value);
      const reviewValue = review.querySelector('input.starRatingReviewValue').value;
      new Rating(review, 5, 25, 0.5, Number(reviewValue), true);
  }
}
