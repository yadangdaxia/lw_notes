# require_relative "cookbook" # You need to create this file!
# require_relative "controller" # You need to create this file!
require_relative "router"

CSV_FILE = File.join(File.dirname(__FILE__), "meals.csv")
meals_repository = MealRepository.new(CSV_FILE)
# customer_repository = CustomerRepository.new(CSV_FILE)
controller = Controller.new(meals_repository)

router = Router.new(controller)

# Start the app
router.run
