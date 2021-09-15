# This is the first model.

class Patient
attr_reader :name, :cured
attr_accessor :room   # This allows us to call the room on the patient, e.g. check what room a specific patient is in.
attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name] || "Unknown"
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type]
  end
end

nancy = Patient.new({ name:"Nancy", cured: false})
p nancy

bum_1 = Patient.new({ cured: false, blood_type: "A"})
p bum_1
