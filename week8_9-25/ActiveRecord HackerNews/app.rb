require_relative "config/application"
require_relative "app/controllers/posts_controller"
require_relative "app/views/posts_view"
require_relative "app/models/post"
require_relative "router"

Router.new.run
