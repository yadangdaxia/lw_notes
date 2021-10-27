// NAMING MULTIPLE VARIABLES

let firstName = 'Jack'; 
let lastName = 'Ripper';



// STRING INTERPOLATION //

var myName = 'Adam';
var myCity = 'Shanghai';
console.log(`My name is ${myName}. My favorite city is ${myCity}.`)



// CONDITIONALS //

let sale = true;
if (sale) {
  console.log('Time to buy!')
}


let hungerLevel = 7;
if (hungerLevel > 7) {
  console.log('Time to eat!')
}
else {
  console.log('We can eat later!')
}


// LOGICAL OPERATORS//

let tool = 'marker';

let writingUtensil = tool || 'pen'

console.log(`The ${writingUtensil} is mightier than the sword.`);




// ELSE IF CONDITIONALS //

let season = 'winter';

if (season === 'spring') {
  console.log('It\'s spring! The trees are budding!');
  }

  else if (season === 'winter') {
    console.log('It\'s winter! Everything is covered in snow.')
  }
  
  else if (season === 'fall') {
    console.log('It\'s fall! Leaves are falling!')
  }

  else if (season === 'summer') {
    console.log('It\'s sunny and warm because it\'s summer!')
  }

  else {
  console.log('Invalid season.');
}


// SWITCH //

let groceryItem = 'papaya';
 
switch (groceryItem) {
  case 'tomato':
    console.log('Tomatoes are $0.49');
    break;
  case 'lime':
    console.log('Limes are $1.49');
    break;
  case 'papaya':
    console.log('Papayas are $1.29');
    break;
  default:
    console.log('Invalid item');
    break;
}
 
// Prints 'Papayas are $1.29'
