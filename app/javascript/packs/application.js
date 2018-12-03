import "bootstrap";


const selectTopic = document.getElementById("topic")
const selectSubtopic = document.getElementById("subtopic")

selectTopic.addEventListener("change", (event) => {
  console.log(selectTopic.value)

});
