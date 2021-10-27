const inventory = {
  sunglasses: 1900,
  pants: 1088,
  bags: 1344
};

//MAKING A PROMISE FUNCTION

const myExecutor = (resolve, reject) => {
  if (inventory.sunglasses > 0) {
    resolve('Sunglasses order processed.');
  }
  else reject('That item is sold out.');
}

const orderSunglasses = () => {
  return new Promise(myExecutor);

const orderPromise = orderSunglasses()

console.log(orderPromise);

//in bash terminal can type the following to run: $ node app.js




console.log("This is the first line of code in app.js.");
// Keep the line above as the first line of code
// Write your code here:
const usingSTO = () => {
  console.log('My dog ate my homework.')
}

setTimeout(usingSTO, 1500)





// SUCCESS AND FAILURE CALLBACK FUNCTIONS

const {checkInventory} = require('./library.js');

const order = [['sunglasses', 1], ['bags', 2]];

// Write your code below:
const handleSuccess = (resolved) => {
  console.log(resolved);
}

const handleFailure = (rejected) => {
  console.log(rejected);
}

checkInventory(order).then(handleSuccess, handleFailure)
