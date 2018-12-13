const initGallery = () => {
  const images = document.querySelectorAll(".recap-replay-box img");
  images.forEach((image) => {
    image.addEventListener("click", ()=> {
      image.classList.toggle("active")

    })
  })
}

export {initGallery}
