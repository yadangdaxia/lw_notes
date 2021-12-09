const hobbies  = ['music', 'drugs', 'sex']
console.log(hobbies)



const hello = 'Hello World';
console.log(hello[6]);
// Output: W



const famousSayings = ['Fortune favors the brave.', 'A joke is a very serious thing.', 'Where there is love there is life.'];
let listItem = famousSayings[0]



let groceryList = ['bread', 'tomatoes', 'milk'];
groceryList[1] = 'avocados'
console.log(groceryList)



const objectives = ['Learn a new languages', 'Read 52 books', 'Run a marathon'];
console.log(objectives.length)



const chores = ['wash dishes', 'do laundry', 'take out trash'];
chores.push('sweep floor', 'clean toilets')
console.log(chores)



const groceryList = ['orange juice', 'bananas', 'coffee beans', 'brown rice', 'pasta', 'coconut oil', 'plantains'];
groceryList.shift([0])
console.log(groceryList)
//removes item




const groceryList = ['orange juice', 'bananas', 'coffee beans', 'brown rice', 'pasta', 'coconut oil', 'plantains'];
const pastaIndex = groceryList.indexOf('pasta')
console.log(pastaIndex)




const concept = ['arrays', 'can', 'be', 'mutated'];

function changeArr(arr){
  arr[3] = 'MUTATED';
}

changeArr(concept);

console.log(concept)

function removeElement(newArr) {
  newArr.pop()
}
removeElement(concept)

console.log(concept)





let numberClusters = [[1, 2], [3, 4], [5, 6]]
const target = numberClusters[2][1]


