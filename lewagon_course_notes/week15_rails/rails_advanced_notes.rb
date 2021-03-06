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

crimson = Article.new(title: "Hello Rails", body: "I am on Rails!")
crimson.save


#  BARS

# app/views/bar/new.html.erb
<%= render 'form', bar: @bar %>
<%# <%= link_to 'Back', bars_path %> %>
<h1>Add a New Bar</h1>


# app/views/bars/index/html.erb
<h1> Bars index page </h1>

<ul>
  <% @bars.each do |bar| %>
    <li><%= bar.name %></li>
  <% end %>
</ul>

#app/views/bars/show.html.erb
<h2><%= @bar.name %></h2>
<p><%= @bar.address %></p>
<p><%= @bar.beers %></p>

# app/controllers/barscontroller.rb
class BarsController < ApplicationController
    def index
        @bars = Bar.all
    end
    def new
        @bars = Bar.new
    end
    def show
        @bar = Bar.find(params[:id])
    end
end

# config/routes.rb
Rails.application.routes.draw do
  resources :bars
  root to: 'bars#index'
end


