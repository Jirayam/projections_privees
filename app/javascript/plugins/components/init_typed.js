import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Reserve ta projection", "Rentabilise ton home cinéma"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
