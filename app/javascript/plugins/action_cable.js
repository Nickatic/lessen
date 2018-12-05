const initChannel = () => {
  const div = document.getElementById("chat_lesson");
  if (div) {
    const id = div.dataset.lessonId;
    App[`lesson_${id}`] = App.cable.subscriptions.create(
      { channel: 'LessonsChannel', lesson_id: id },
      {
        received: (data) => {
          // Coder le js pour ajouter un message dans la vue
          console.log(data.message_partial);
          const messages = document.querySelector(".messages");
          messages.insertAdjacentHTML('beforeend', data.message_partial);
          const input = document.getElementById("message_content");
          input.value = "";
          scrollLastMessageIntoView();
        }
      }
    )
  }
}

const scrollLastMessageIntoView = () => {
  const messages = document.querySelectorAll(".message-content");
  const lastMessage = messages[messages.length - 1];
  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}


export { initChannel, scrollLastMessageIntoView }

