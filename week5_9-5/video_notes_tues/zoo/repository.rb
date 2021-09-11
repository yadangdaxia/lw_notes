# this file handles all the animals

class Repository
  def initialize(csv_file_path)
    @animals = []
    @csv_file_path = csv_file_path
    # Load the csv
    CSV.foreach(filepath) do |row|
    # read each row of csv
    name = row[0]
    #
    species = row[1]
    # turn row into instance
    animal = Animal.new(name, species)
    # push into instance
    @animals << animal

  end

  def all
    @repository
  end

  def add(animal)
    @animals << animal
    # ADD CSV OPTIONS
    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      @animals.each do |animal|
        csv << [animal.name, animal.species]
      end
    end

    end
  end

end
