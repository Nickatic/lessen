const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lessen');
  if (navbar) {
    window.addEventListener('scroll', (event) => {
      if (window.scrollY >= (window.innerHeight)) {
        navbar.classList.add('navbar-lessen-red');
      } else {
        navbar.classList.remove('navbar-lessen-red');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
