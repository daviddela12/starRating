import {Rating} from "./rating.js";

const elementSummary = document.querySelector("#starRatingSummary");
const elementSummaryValue = document.querySelector("#starRatingSummaryValue").value;
new Rating(elementSummary, 5, 35, 0.5, Number(elementSummaryValue), true);

const elementForm = document.querySelector("#starRatingForm");
const elementFormValue = elementForm.querySelector('#review_rating').value;
new Rating(elementForm, 5, 30, 0.5, Number(elementFormValue));

document.querySelectorAll('div[id^="starRatingReview"]').forEach( (review) => {
    const reviewValueId = '#'+review.id+'Value';
    const reviewValue = review.querySelector(reviewValueId).value;
    new Rating(review, 5, 25, 0.5, Number(reviewValue), true);
});
