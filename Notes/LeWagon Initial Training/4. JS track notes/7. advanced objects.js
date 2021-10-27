//STRING INTERPOLATION AND this KEYWORD

const robot = {
  model: '1E78V2',
  energyLevel: 100,
  provideInfo() {
    return `I am ${this.model} and my current energy level is ${this.energyLevel}.` }
    }

console.log(robot.provideInfo())


//LONGHAND AND SHORTHAND FUNCTIONS. 


const robot = {
  energyLevel: 100,
  checkEnergy: function() {
    console.log(`Energy is currently at ${this.energyLevel}%.`)
  }
}


const robot = {
  energyLevel: 100,
  checkEnergy: () => {
    console.log(`Energy is currently at ${this.energyLevel}%.`)
  }
}


const robot = {
  energyLevel: 100,
  checkEnergy () {
    console.log(`Energy is currently at ${this.energyLevel}%.`)
  }
}




//GETTER 

const robot = {
  _model: '1E78V2',
  _energyLevel: 100,
  get energyLevel(){
    if(typeof this._energyLevel === 'number') {
      return 'My current energy level is ' + this._energyLevel
    } else {
      return "System malfunction: cannot retrieve energy level"
    }
  }
};

console.log(robot.energyLevel);




//SETTER

const robot = {
  _model: '1E78V2',
  _energyLevel: 100,
  _numOfSensors: 15,
  get numOfSensors(){
    if(typeof this._numOfSensors === 'number'){
      return this._numOfSensors;
    } else {
      return 'Sensors are currently down.'
    }
  },
  set numOfSensors(num) {
    if (typeof num === 'number' && num >= 0) {
      this._numOfSensors = num;
    }
    else (console.log('Pass in a number that is greater than or equal to 0'))
  }
};
robot.numOfSensors = 100

console.log(robot.numOfSensors)



//FACTORY OBJECTS

const robotFactory = (model, mobile) => {
  return {
    model : model,
    mobile: mobile,
    beep () { 
      console.log('Beep Boop'); 
}
};
};

const tinCan = robotFactory('P-500', true);
tinCan.beep();
