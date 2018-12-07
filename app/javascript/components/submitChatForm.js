function submitChatForm() {
  const form = document.getElementById('new_message');
  const btn = document.getElementById('chat-btn')
  const input = document.getElementById('message_content');
  input.addEventListener('keyup', (event)=> {
    event.preventDefault();
      console.log(event.keyCode)

    if (event.keyCode === 13) {
      btn.click()
      // form.submit();
    }

  })
}

export { submitChatForm }
