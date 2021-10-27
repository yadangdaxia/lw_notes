//class WITH A constructor() METHOD




class Surgeon {
  constructor(name, department) {
    this._name = name;
    this._department = department;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get department() {
    return this._department;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

//CREATING INSTANCES

const surgeonRomero = new Surgeon('Francisco Romero', 'Cardiovascular');
const surgeonJackson = new Surgeon('Ruth Jackson', 'Orthopedics');



//CALLING METHODS AND LOGGING INFO

console.log(surgeonRomero.name)
surgeonRomero.takeVacationDays(3)
console.log(surgeonRomero.remainingVacationDays)








//CREATING PARENT CLASS
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }

    static generatePassword() {
      return Math.floor(Math.random() * 10000)
  }

  get name() {
    return this._name;
  }
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }

//CREATING THE METHOD INSIDE CLASS
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

//EXTENDING INTO A SUBCLASS
class Nurse extends HospitalEmployee {
  constructor(name, certifications) {
    super(name);
    this._certifications = certifications;
  } 
  get certifications() {
    return this._certifications;
  }
  addCertification(newCertification) {
    this._certifications.push(newCertification);
  }
}

//CREATING NEW INSTANCE
const nurseOlynyk = new Nurse('Olynyk', ['Trauma', 'Pediatrics'])

//CALLING THE METHODS AND LOGGING
nurseOlynyk.takeVacationDays(5)
console.log(nurseOlynyk.remainingVacationDays)

nurseOlynyk.addCertification('Genetics')
console.log(nurseOlynyk.certifications)


