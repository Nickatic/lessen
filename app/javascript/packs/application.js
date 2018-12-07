import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import flatpickr from "flatpickr";
import { initFlatpickr } from "../plugins/flatpickr";
import { initChannel, scrollLastMessageIntoView } from "../plugins/action_cable";


initFlatpickr();

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { submitChatForm } from '../components/submitChatForm';
import { initFormRefresh } from '../components/sort_by';



initFormRefresh();
initUpdateNavbarOnScroll();
initChannel();
scrollLastMessageIntoView();
submitChatForm();

import { carouselIndex } from '../components/carousel-participations-index.js';

carouselIndex();
