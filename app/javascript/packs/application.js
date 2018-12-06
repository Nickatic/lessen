import "bootstrap";

import flatpickr from "flatpickr";
import { initFlatpickr } from "../plugins/flatpickr"
import { initChannel, scrollLastMessageIntoView } from "../plugins/action_cable"


initFlatpickr()

import { initUpdateNavbarOnScroll } from '../components/navbar'
import { submitChatForm } from '../components/submitChatForm'




initUpdateNavbarOnScroll();
initChannel();
scrollLastMessageIntoView();
submitChatForm();


