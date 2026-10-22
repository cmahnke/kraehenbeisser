import 'ts/iiif-image-viewer';

declare global {
    interface Window {
        cardPressed(): void;
        cardReleased(): void;
        hamburgerMenuPressed(): void;
    }
}

function cardPressed(this: HTMLElement): void {
    this.classList.add('card-hover');
}

function cardReleased(this: HTMLElement): void {
    this.classList.remove('card-hover');
}

function hamburgerMenuPressed(this: HTMLElement): void {
    const parent = this.parentNode as HTMLElement;
    if (parent.classList.contains('hamburger-menu-open')) {
        document.body.classList.remove('no-scroll');
        parent.classList.remove('hamburger-menu-open');
        this.setAttribute('aria-expanded', 'false');
        document.body.style.paddingRight = 0 + 'px';
    } else {
        document.body.style.paddingRight = window.innerWidth - document.documentElement.clientWidth + 'px';
        document.body.classList.add('no-scroll');
        parent.classList.add('hamburger-menu-open');
        this.setAttribute('aria-expanded', 'true');
    }
}

window.cardPressed = cardPressed;
window.cardReleased = cardReleased;
window.hamburgerMenuPressed = hamburgerMenuPressed;
