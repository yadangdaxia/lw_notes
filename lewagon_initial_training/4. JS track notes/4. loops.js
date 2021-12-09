
//COUNTS FORWARD //

for (let counter = 0; counter < 4; counter++) {
  console.log(counter);
  }
  
  
// COUNTS TO 3 //
for (let i = 1; i<=3; i++) {
  console.log(i)
}

  

//COUNTS BACKWARD //
  
 for (let counter = 3; counter >= 0; counter--){
  console.log(counter);
}



// ITERATION OF ARRAY //
// i IS THE ITERATOR VARIABLE //

const vacationSpots = ['Bali', 'Paris', 'Tulum'];

for (let i = 0; i < vacationSpots.length; i++) {
  console.log('I would love to visit ' + (vacationSpots[i]));
}



// MERGING ARRAYS //

bobsFollowers = ['Xiao Ping', 'Keila', 'Hazy', 'Chloe']
tinasFollowers = ['Hazy', 'Rufus', 'Xiao Ping']

mutualFollowers = []

for (let i = 0; i < bobsFollowers.length; i++) {
  for (let j = 0; j < tinasFollowers.length;  j++) {
    if (tinasFollowers[j] === bobsFollowers[i]) {
    mutualFollowers.push(tinasFollowers[j])
    }
  }
}
console.log(mutualFollowers)




// A for loop that prints 1, 2, and 3
for (let counterOne = 1; counterOne < 4; counterOne++){
  console.log(counterOne);
}
 
// A while loop that prints 1, 2, and 3
let counterTwo = 1;
while (counterTwo < 4) {
  console.log(counterTwo);
  counterTwo++;
}




// WHILE LOOP, ONE UNDEFINED //

const cards = ['diamond', 'spade', 'heart', 'club',];

// Write your code below
let currentCard
while (currentCard != 'spade') {
  currentCard = cards[Math.floor(Math.random() * 5)];
  console.log(currentCard)
}




// DO/WHILE LOOP //

let countString = '';
let i = 0;
 
do {
  countString = countString + i;
  i++;
} while (i < 5);
 
console.log(countString);




// BREAK OUT //

const rapperArray = ["Lil' Kim", "Jay-Z", "Notorious B.I.G.", "Tupac"];

for (let i = 0; i < rapperArray.length; i++){
  console.log(rapperArray[i]);
  if (rapperArray[i] === 'Notorious B.I.G.'){
    break;
  }
}

console.log("And if you don't know, now you know.");







