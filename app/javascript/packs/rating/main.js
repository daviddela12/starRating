import {Rating} from "./rating.js";

const elementSummary = document.querySelector("#starRatingSummary");
new Rating(elementSummary, 5, 35, 0.5, 2.5, true);

const elementForm = document.querySelector("#starRatingForm");
const elementFormValue = elementForm.querySelector('#review_rating').value;
new Rating(elementForm, 5, 25, 0.5, Number(elementFormValue));

document.querySelectorAll('div[id^="starRatingReview"]').forEach( (review) => {
    const reviewValueId = '#'+review.id+'Value';
    const reviewValue = review.querySelector(reviewValueId).value;
    new Rating(review, 5, 25, 0.5, Number(reviewValue), true);
});
