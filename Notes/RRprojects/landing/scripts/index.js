

const skateboard = document.querySelector('#skateboard');
const flower = document.querySelector('#flower');
const pony = document.querySelector('#pony');
const heroButton = document.querySelector('#hero-button');


// Hero buttons
const unclicked = "Kick ass"
const clicked = "Yeah!!"

// Change skateboard from square to circle
skateboard.addEventListener('click', () => {  // can add the word event in the parentheses, or event.currentTarget to get info in browser
  //console.log("You clicked the image!");
  skateboard.classList.toggle('img-circle');  // change add to toggle to have it go back after clicking
});

flower.addEventListener('click', () => {
  console.log("you clicked the flower")
  flower.classList.toggle('img-darken');
});

pony.addEventListener('click', (e) => {
  console.log(e)
  pony.classList.toggle('img-shrink');
  let sound = new Audio('images/horse_noise.mp3')
  sound.play();
});

heroButton.addEventListener('click', (e) => {
  console.log(e)
  if (heroButton.innerText === clicked) {
    heroButton.innerText = unclicked
  }
  else {
    heroButton.innerText = clicked
  }
})

// Was trying to get a new button to appear when the first button is clicked
heroButton.addEventListener('click', () => {
  const newButton = document.querySelector('#hidden-button')
  console.log(newButton)
  newButton.classList.remove('#hidden-button')
});
