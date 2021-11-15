
// HERO

const heroButton = document.querySelector('#hero-button');
const unclicked = "Kick ass"
const clicked = "Yeah!!"

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



// CLICKABLE JS EVENTS

const skateboard = document.querySelector('#skateboard');
const flower = document.querySelector('#flower');
const pony = document.querySelector('#pony');

// Change skateboard from square to circle
skateboard.addEventListener('click', () => {  // can add the word event in the parentheses, or event.currentTarget to get info in browser
  //console.log("You clicked the image!");
  skateboard.classList.toggle('img-circle');  // change add to toggle to have it go back after clicking
});

// Change tint of flower
flower.addEventListener('click', () => {
  console.log("you clicked the flower")
  flower.classList.toggle('img-darken');
});

// Make pony shrink and play sound
pony.addEventListener('click', (e) => {
  console.log(e)
  pony.classList.toggle('img-shrink');
  let sound = new Audio('images/horse_noise.mp3')
  sound.play();
});



// SELECTABLE BUTTONS

const selectAllButtons = () => {
  const reset = document.querySelector('#select-all')
  // console.log(reset);
  const buttons = document.querySelectorAll('.selectable')
  reset.addEventListener('click', (e) => {
    // console.log(e)
    buttons.forEach((button) => {
      button.classList.add('active')
      });
  });
}

const clearAllButtons = () => {
  const reset = document.querySelector('#clear-all')
  // console.log(reset);
  const buttons = document.querySelectorAll('.selectable')
  reset.addEventListener('click', (e) => {
    // console.log(e)
    buttons.forEach((button) => {
      button.classList.remove('active')
      });
  });
}

const selectMultipleButtons = () => {
  const buttons = document.querySelectorAll('.selectable')
  buttons.forEach((button) => {
    button.addEventListener('click', (e) => {
      console.log(e);
      e.target.classList.toggle('active')
    });
  });
}

selectAllButtons();
clearAllButtons();
selectMultipleButtons();




// DOM MANIPULATION

// Look at all the properties in the document
// console.dir(document);
// Change the title
// document.title = "123"
// console.log(document.all);
// document.all[97].textContent = "hello"
// itemList = document.querySelector('#items');
// console.log(itemList)
// itemList.parentNode.style.backgroundColor = 'blue';
// itemList.children[1].style.backgroundColor = 'yellow';
//itemList.lastElementChild.textContent = "Hi I'm number 4"
// output = document.querySelector('#output')



const box = document.getElementById('box');

const colorChanger = (e) => {
//box.style.backgroundColor = "rgb()"
console.log('Event Type:', e.type);
output.innerHTML = '<h3>MouseX: '+e.offsetX+'</h3><h3>MouseY: '+e.offsetY+'</h3>';
box.style.backgroundColor='rgb('+e.offsetX+', '+e.offsetY+', 255)'
}

box.addEventListener('mousemove', colorChanger);



const form = document.getElementById('add-form')
const itemList = document.getElementById('items')




// Add item
const addItemToList = (e) => {
  e.preventDefault();
  const newInput = document.getElementById('input').value;
  console.log(newInput)
  // Create new li element
  const li = document.createElement('li');
  // Add class
  li.className = 'list-group-item list-group-item-action';
  // Add text node with input value
  li.appendChild(document.createTextNode(newInput));
  
  // Create HTML button to delete
  const deleteBtn = document.createElement('button');
  // Add classes to delete button
  deleteBtn.className = 'btn btn-warning btn-sm float-right delete';
  // Append text node
  deleteBtn.appendChild(document.createTextNode('X'));
  // Append button to li
  li.appendChild(deleteBtn);

  // Append li to list
  itemList.appendChild(li)
}

// Remove item
const deleteItemFromList = (e) => {
  //const item = document.getElementById
  const deleteBtn = document.querySelectorAll('.btn-warning')
  console.log(deleteBtn);
    deleteBtn.addEventListener('click', (e) => {
      console.log("hi");
      e.target.innerText = "C345"
  })


}

//if(e.target.classList.contains('delete'))

// Events
form.addEventListener('submit', addItemToList);




