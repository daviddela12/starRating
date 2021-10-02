/**
 * Star Rating system
 * Based on
 * @author: dcruz
 */
export class Rating {
    constructor( element, starMax, starSize, starStep, rating, readOnly ) {
        if (typeof element === "undefined" || element === null) {
            throw new Error("element is required");
        }
        let css = require('./style.css');

        this.element = element;
        this.stars = starMax || 5;
        this.starSize = starSize || 16;
        this.starStep = starStep || 1;
        this.rating = rating || 0;
        this.readOnly = readOnly || false;
        this.currentRating = null;
        this.isRating = false;
        this.init();
    }

    init() {
        this.element.classList.add("star-rating");
        let div = document.createElement("div");
        div.classList.add("star-value");
        div.style.backgroundSize = this.starSize + "px";
        this.element.appendChild(div);
        this.element.style.width =  this.starSize *  this.stars + "px";
        this.element.style.height =  this.starSize + "px";
        this.element.style.backgroundSize =  this.starSize + "px";
        this.setRating(this.rating);
        this.addEvents();
    }

    setRating(value) {
        if (typeof value === "undefined") {
            throw new Error("Value not set.");
        }
        if (value === null) {
            throw new Error("Value cannot be null.");
        }
        if (typeof value !== "number") {
            throw new Error("Value must be a number.");
        }
        if (value < 0 || value > this.stars) {
            throw new Error("Value too high. Please set a rating of " + this.stars + " or below.");
        }
        this.rating = value;
        this.element.querySelector(".star-value").style.width = this.rating/this.stars * 100 + "%";
        this.element.setAttribute("data-rating", this.rating);
    }

    onMouseMove(e, current, isTouch) {
        if (current.readOnly === true || current.isRating === true) {
            return;
        }
        let xCoor = null;
        let percent;
        let width = this.element.offsetWidth;
        let parentOffset = this.element.getBoundingClientRect();
        if(isTouch) {
            xCoor =	e.changedTouches[0].pageX - parentOffset.left;
        } else {
            xCoor = e.offsetX;
        }
        percent = xCoor / width * 100;

        if (percent < 101) {
            if (current.starStep === 1) {
                current.currentRating = Math.ceil((percent / 100) * current.stars);
            } else {
                let rat = (percent / 100) * current.stars;
                for (let i = 0; ; i += current.starStep) {
                    if (i >= rat) {
                        current.currentRating = i;
                        break;
                    }
                }
            }
            //todo: check why this happens and fix
            if(current.currentRating > current.stars) {
                current.currentRating = current.stars;
            }
            current.element.querySelector(".star-value").style.width = current.currentRating/current.stars * 100 + "%";
        }
    }

    onStarOut(e, current) {
        if (!this.rating) {
            this.element.querySelector(".star-value").style.width = "0%";
            this.element.removeAttribute("data-rating");
        }else {
            this.element.querySelector(".star-value").style.width = this.rating/this.stars * 100 + "%";
            this.element.setAttribute("data-rating", this.rating);
        }
    }

    onStarClick(e) {
        if (this.readOnly === true || this.isRating === true) {
            return;
        }

        if (typeof callback !== "undefined") {
            this.isRating = true;
            this.myRating = this.currentRating;
        }
    }

    addEvents() {
        this.element.addEventListener("mousemove", (e) => {
            this.onMouseMove(e, this, false);
        });
        this.element.addEventListener("mouseleave", (e) => {
            this.onStarOut(e, this);
        });
        this.element.addEventListener("click", (e) => {
            this.onStarClick(e, this);
        });
    }

    clear() {
        this.rating = 0;
        this.setRating(0);
    }
}