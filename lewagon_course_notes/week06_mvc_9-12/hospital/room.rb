require_relative 'patient'

class Room
  class CapacityReachedError < Exception; end   # Similar to Timeout::Error for APIs
  attr_accessor :id

  # STATE?
  # capacity (Fixnum)
  # patients (Array of Patient instances)
  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  # Instance methods for behaviors
  def full?
    @capacity == @patients.length
  end

  def add_patient(patient)
    if full?
      fail CapacityReachedError, "The room is full"
    else
      @patients << patient
      patient.room = self   # Sets the room of the patient
    end
  end

end
p "-----"
room_1 = Room.new(capacity: 2)
p room_1.full?

john = Patient.new(name: "John", blood_type: "O")
# Add the patient to a room
room_1.add_patient(john)
p "-----"
# Know what room he is in.
room_1 = john.room

paul = Patient.new(name: "Paul")
room_1.add_patient(paul)

begin
  ringo = Patient.new(name: "Ringo")
  room_1.add_patient(ringo)
rescue Room::CapacityReachedError
  puts "That's fine, leave him out."
end

puts "All good."
