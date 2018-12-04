import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar'

const selectTopic = document.getElementById("topic")
const selectSubtopic = document.getElementById("subtopic")

if (selectSubtopic) {
  selectTopic.addEventListener("change", (event) => {
    console.log(selectTopic.value)
  });
}

initUpdateNavbarOnScroll();


