/*
 * Copied from:    https://github.com/josephhutch/aether
 * Original file:  assets/js/core.js
 * Source commit:  c0c315882e286fc30c484f55d5d207994bed89bb
 * Local changes:  renamed from core.js to aether.js
 *
 * MIT License
 *
 * Copyright (c) 2018 Joe Hutchinson
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */



function cardPressed() {
    this.classList.add('card-hover');
}

function cardReleased() {
    this.classList.remove('card-hover');
}

function hamburgerMenuPressed() {
    if (this.parentNode.classList.contains('hamburger-menu-open')) {
        document.body.classList.remove('no-scroll');
        this.parentNode.classList.remove('hamburger-menu-open')
        this.setAttribute('aria-expanded', "false");
        document.body.style.paddingRight = 0 + "px";
    } else {
        document.body.style.paddingRight = window.innerWidth - document.documentElement.clientWidth + "px";
        document.body.classList.add('no-scroll');
        this.parentNode.classList.add('hamburger-menu-open')
        this.setAttribute('aria-expanded', "true");
    }
    
}