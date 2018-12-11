import 'bootstrap-star-rating';
import 'jquery';
import 'bootstrap-star-rating/css/star-rating.min.css';


const initStars = () => {
  $("#star-id").rating({
    'size':'md',
    'showClear': false,
    'showCaption': false
  });
}

export { initStars };
