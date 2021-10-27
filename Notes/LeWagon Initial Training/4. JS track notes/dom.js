// most important methods

document.querySelector(CSS_SELECTOR);

const banner = document.querySelector("#banner")
// querySelector allows you to select elements by using their css selectors


const banner = document.getElementById("banner")
// getElementById only allows you to select and element by the id



const elements = document.getElementsByClassName("some_class another_class");
let all_images = document.querySelectorAll(".article_image");







// Selecting an element with an id
// In HTML
<ul id="players"></ul>
/// In JS
const list = document.querySelector("#players"); // CSS id selector
// or (not entirely sure what the difference is) 
const list = document.getElementById("players");

// Document is the parent
list.insertAdjacentHTML("beforeend", "<li>Luke</li>");
list.insertAdjacentHTML("beforeend", "<li>Anakin</li>");

// DOM manipulation
const items = document.querySelectorAll("#fifa-wins li");
// gets all list items of that ol id
console.log(items);

// in HTML:
<ol id="fifa-wins">
  <li>Brazil</li>
  <li>Germany</li>
  <li>Italy</li>
</ol>

items.forEach((item) => {
  console.log(item.innerText)
})
// What is innerText?

list.insertAdjacentHTML("beforeend", "<li>France<li>");
// What is  beforeend?

// Can even set a wait time (advanced), 3000 is 3 seconds I think
setTimeout(() => {
  list.insertAdjacentHTML("beforeend", "<li>France<li>");
}, 3000)

// Using JS for CSS manipulation

const element = document.querySelector(CSS_SELECTOR);
// Hide
element.style.display = "none";
// Show
element.style.display = "";

const list = document.getElementById("fifa-wins");

list.classList.add("red");
list.classList.remove("red");
list.classList.toggle("red");

<input name="email" id="email" value="paul@gmail.com" />

const input = document.querySelector("#email");
console.log(input.value);
input.value = "adam@adam.com";

// Extract text / HTML using JS
// HTML:
<a href="https://www.lewagon.com" id="home">Le Wagon <em>rocks</em></a>
// JS:
const home = document.getElementById("home");  // can name the variable link or whatever as well
console.log(home.innerText); // returns rocks
console.log(home.innerHTML);// returns <em>rocks</em>


console.log(home.attributes.href.value);  // returns url (?)

home.innerHTML = "Le Wagon <strong>rocks</strong>!"; // Update HTML

// Accessing datasets
// HTML:
<div id="user" data-uid="2471555" data-github-nickname="Papillard">
  Boris Paillard
</div>
// JS:
const boris = document.getElementById('user');
console.log(boris.dataset.uid);
console.log(boris.dataset.githubNickname);

//Events - trigger events when a user does something
// HTML DOM Events examples:
DOMContentLoaded  // document
blur              // input / textarea
click             // any visible element
change            // select
focus             // any visible element
keyup             // window / any focused element
mouseover         // any visible element
resize            // window
scroll            // window / any scrollable element
submit            // form
touchstart        // for mobile devices


// Use addEventListener to react to an event.
element.addEventListener(eventType, (event) => {
  // Do something (callback)
});

// Example:

// HTML:
<img src="https://kitt.lewagon.com/placeholder/users/monsieurpaillard"
     id="romain" height="200" alt="Romain Paillard" />

     // CSS: This is the class you want to add only when you click on the picture
.img-circle {
  height: 100px;
  border-radius: 50%
}

// JS:
const img = document.querySelector("#romain"); //hashtag cause it's an id, not a class
img.addEventListener("click", () => {  // can add the word event in the parentheses, or event.currentTarget to get info in browser
  //console.log("You clicked the image!");
  img.classList.add("img-circle");  // change add to toggle to have it go back after clicking
})

img.addEventListener("click", (event) => {
  debugger
  img.classList.toggle("img-circle");  //
})



const students = document.querySelectorAll(".student");
//console.log(students);


students.forEach(student => {
  student.addEventListener("click", (e) => {
    //console.log("Hello")
    e.currentTarget.classList.toggle("red")
  })
})


// Selecting child elements: 
const a = document.querySelector("div p.top:first-child:")

