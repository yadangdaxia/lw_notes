  // PARAMETERS AND STRING CONCATENATION //

function sayThanks(name) {
  console.log('Thank you for your purchase '+ name + '! We appreciate your business.');
}
sayThanks('Cole')




// DEFAULT VALUES

function makeShoppingList(item1 = 'milk', item2 = 'bread', item3 = 'eggs'){
  console.log(`Remember to buy ${item1}`);
  console.log(`Remember to buy ${item2}`);
  console.log(`Remember to buy ${item3}`);
}



//RETURNING 

function monitorCount (rows, columns){
  return rows * columns
}
const numOfMonitors = monitorCount(5, 4)

console.log(numOfMonitors)



// HELPER FUNCTIONS

function monitorCount(rows, columns) {
  return rows * columns;
}
function costOfMonitors(rows, columns) {
  return monitorCount(rows, columns) * 200
}
const totalCost = costOfMonitors(5, 4)

console.log('Your price is: $' +  totalCost)



//FUNCTION EXPRESSIONS

const plantNeedsWater = function water(day) {
  if (day === 'Wednesday')
    return true;
  else 
    return false;
}

console.log(plantNeedsWater('Tuesday'))



//REFACTORED (SIMPLIFIED)

// this //

const squareNum = (num) => {
  return num * num;
};


// becomes  this //

const squareNum = num => num * num;




// SCOPE: Global vs Block //


const satellite = 'The Moon'
const galaxy = 'The Milky Way'
const stars = 'North Star'

function callMyNightSky() {
  return 'Night Sky: ' + satellite + ', ' + stars + ', and ' + galaxy;
}
console.log(callMyNightSky());



// SCOPE POLLUTION EXAMPLE //


const satellite = 'The Moon';
const galaxy = 'The Milky Way';
let stars = 'North Star';

const callMyNightSky = () => {
  stars = 'Sirius';
	return 'Night Sky: ' + satellite + ', ' + stars + ', ' + galaxy;
};

console.log(callMyNightSky());
console.log(stars)



// EXAMPLE 2 //

const logVisibleLightWaves = () => {
  let lightWaves = 'Moonlight';
	let region = 'The Arctic';
  // Add if statement here:
  if (region === 'The Arctic'){
    let lightWaves = 'Northern Lights'
    console.log(lightWaves);
  }
  console.log(lightWaves);
};

logVisibleLightWaves();