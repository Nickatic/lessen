const initShowReview = () => {
  const reviewsLink = document.querySelector('#show-review');
  if (reviewsLink) {
    reviewsLink.addEventListener('click', (event) => {
      const reviews = document.getElementById("reviews_list")
      reviews.scrollIntoView({ block: 'end',  behavior: 'smooth' });
    });
  }
};

export { initShowReview };
