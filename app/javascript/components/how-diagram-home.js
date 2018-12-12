



const initHowBox = () => {
  const homepage = document.getElementById('home-page');
  if (homepage) {
    window.addEventListener('scroll', callback)
  }
}


const callback = () => {
  const iconTexts = document.querySelectorAll('.icon-text');
  if (window.pageYOffset > 410) {
    iconTexts[0].classList.add('active');
  }
  if (window.pageYOffset > 520) {
    iconTexts[1].classList.add('active');
  }
  if (window.pageYOffset > 600) {
    iconTexts[2].classList.add('active');
  }
}

export { initHowBox };
