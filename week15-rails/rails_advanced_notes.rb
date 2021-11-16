# In the terminal
yarn add bootstrap@4.6

rm app/assets/stylesheets/application.css
touch app/assets/stylesheets/application.scss
code .
# application.scss 
@import "bootstrap/scss/bootstrap"; 
# picks it up in node_modules! 

# config/routes.rb
Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end
  end
end


rails routes | grep top
# Prefix           Verb URI Pattern                 Controller#Action
# top_restaurants  GET  /restaurants/top(.:format)  restaurants#top


# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController
    def top
      @restaurants = Restaurant.where(stars: 5)
    end
  end



### Rails advanced (for Tu/Th) Restaurant Reviews

# Make sure rails is installed in the proper directory
gem install rails -v 6.0
rails --version

rails new restaurant-reviews --skip-action-mailbox --skip-active-record #?

yarn add bootstrap

# Rename application.css file to .scss extension (Why?)

# Make sure layouts/application.html.erb looks good. May need to add two lines of code: 

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

# add form gem to gemfile
gem 'simple_form'
# After adding gem, need to bundle install in terminal
bundle install
# Can check node modules folder (?)
#In terminal: 
rails g simple_form:install --bootstrap

rails g scaffold name:string address:string rating:integer
#Note: scaffold adds extra stuff ~ 
rails db:migrate

# Can add seeds in seedfile
rails db:seed

#Check in console
rails c
Restaurant.count
Restaurant.all
