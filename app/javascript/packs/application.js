import "bootstrap";

import flatpickr from "flatpickr";
import { initFlatpickr } from "../plugins/flatpickr"
import { initChannel } from "../plugins/action_cable"


initFlatpickr()

import { initUpdateNavbarOnScroll } from '../components/navbar'



initUpdateNavbarOnScroll();
initChannel();



