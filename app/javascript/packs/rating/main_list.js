import {Rating} from "./rating.js";

document.querySelectorAll('div.starRatingReview').forEach( (review) => {
    const reviewValue = review.querySelector('input.starRatingReviewValue').value;
    new Rating(review, 5, 25, 0.5, Number(reviewValue), true);
});
