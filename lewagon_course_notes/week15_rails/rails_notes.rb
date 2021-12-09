
#NOTES FROM LIVE CODE: 
rails new first-rails-app --skip-active-storage --skip-action-mailbox


# Create model in command line:
rails g model task title details completed:boolean
# Don't need to add data type for title and details; they are string by default
# This creates models/task.rb and db/migrate file. Still need to create own controller and define routes

rails c
# In console: (IRB)
Task.count
Task.new(title: "do homework", details: "don't forget to proofread")
# id will be nil, since it is not in db but only in memory
# Exit irb (type exit)
Bar.new(name: 'rusty nail', address: '123 rusty drive', beers: 'IPA', rating: '5')

# Create controller in command line
rails g controller tasks

# app/controllers/tasks_controller: 
 def index
   @tasks = Task.all
 end


# config/routes.rb

# views/tasks/index.html.erb

# views/tasks/index.html.erb

# In command line:
rails s






###

# Creating CRUD database

rails g scaffold friends first_name:string last_name:string

# Will make migration, then we push it into database later
# Will make all kinds of other stuff too like routes
# Will make css in app>assets>stylesheet which may conflict with bs
# May need to delete things when using scaffold


rails db:migrate
# Pushes into database. Will make schema file. 

rails routes
# Check rails routes




### STRUCTURE ###

# Routes: 
# config/routes.rb
Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'coach', to: 'pages#coach'
  get 'hello', to: 'greetings#hello'
end

# controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
  end
  def about
  end
  def contact
  end
end

# view/pages/home.html.erb
<h1>Home🚀</h1>

###






# New project
rails new thespoon-with-activerecord --skip-active-storage --skip-action-mailbox


rails g model restaurant name:string rating:integer
# g for generate. This creates a migration file and model

db:migrate
# generates schema

rails g migration addAddressToRestaurants

d migrations
# d for destroy. 

# Add validations in restaurant model





rails g migration AddAddressToRestaurants
# Updates database schema
rails g migration RemoveAddressFromRestaurants
# Updates database schema
# Keep syntax: Add..To..  /  Remove..From..

###
# Rails DB tasks
rails db:drop - Drop the database (lose all your data!)
rails db:create - Create the database with an empty schema
rails db:migrate - Run pending migrations on the database schema
rails db:rollback - Revert the last migration
rails db:reset - Drop database + create tables found in schema.rb


# Console to modify data
rails console
rails c
rails console --sandbox

# In command line, no need to restart console after updating model. Can type:
reload!
# Make sure to exit
exit


# CRUD Actions
See all restaurants  #index
See details about one restaurant
Create a restaurant
Update a restaurant
Destroy a restaurant

# GET - receive info from server
# POST - give info to server
# PATCH - update
# PUT - update (replace)
# DELETE - deletes info




# config/routes.rb

Rails.application.routes.draw do 
  resources :restaurants
end

# resources:restaurants essentially does this: 

  get '/restaurants', to: 'restaurants#index'
  # verb - path - controller - method (in controller)
  get '/restaurants/new', to: 'restaurants#new'
  # /new must go before show
  get '/restaurants/:id', to: 'restaurants#show'
  post '/restaurants', to: '_restaurants#create'
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  delete '/restaurants/:id', to: 'restaurants#destroy'
  

# restaurants_controller.rb
class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # instance variables available in view
  end
  def show
    @restaurant = Restaurant.find(params[:id]) 
  end
  def new
    @restaurant = Restaurant.new
    # Makes new restaurant (used with get)
  end
  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
    redirect_to_restaurant_path(@restaurant)
    # Directs to the restaurant you just created
    # Creates new instance (used with post?)
  end
  def edit
  end
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy 
    # This is a hard destroy. Can do soft destroy as well, which is safer.
  end
  
  private
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
  
end





# app/views/restaurants/show.html.erb

<h2><%= @restaurant.name %></h2>
<p><%= @restaurant.address %></p>
<p><%= @restaurant.rating %></p>


# app/views/restaurants/index.html.erb 

<ul>
  <% @restaurants.each do |restaurant| %>
    <li><%= restaurant.name %></li>
  <% end %>
</ul>


# Every time you add gem, run bundle install

# Form for

<%= form_for(@restaurant) do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %>
  <%= f.label :address %>
  <%= f.text_field :address %>
  <%= f.label :rating %>
  <%= f.number_field :rating %>
  <%= f.submit %>
<% end %>


# seeds.rb
100.times do 
Restaurant.create(
name: Faker:name
)

# Linking

<%= link_to(title, path) %>
<!-- app/views/restaurants/index.html.erb -->
<ul>
  <% @restaurants.each do |restaurant| %>
    <li><%= link_to restaurant.name, restaurant_path(restaurant) %></li>
  <% end %>
</ul>
<a href="/restaurants/1">Chez Gladines</a>
<a href="/restaurants/2">Le Temps des Cerises</a>
<a href="/restaurants/3">La Tour d'Argent</a>


