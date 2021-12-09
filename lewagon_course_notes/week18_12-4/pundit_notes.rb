# Pundit gem for Authorization - which users can perform which actions

rails new
#generate everything (controllers, models, views, migration)
rails db:migrate

# gemfile
gem 'pundit'

bundle install

# This gem has special generator. 
rails g pundit:install

# Creates file
# app>policies>application_policy.rb 

# Some methods in this file return booleans (they end in question marks)


# In application_controller.rb 

class ApplicationController < ActionController::Base
  # [...]
  before_action :authenticate_user!
  
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  #This allows you to have pages to skip pundit
  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end




# Add line of code in restaurants_controller.rb

def new
  @restaurant = Restaurant.new
  authorize @restaurant
end

# Can create new file (or generate with the following code)
rails g pundit:policy restaurant

# Update restaurant_policy.rb (Inherits from ApplicationController)
def new?
  true
end
# In this way, everyone is allowed to create a new restaurant




# In restaurant_policy.rb can remove
def new?
  true
end


# restaurants_controller.rb
private

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
  authorize @restaurant
end


# In restaurant_policy.rb
# Add:
def show?
  true
end

# In restaurant_policy.rb
# Maybe only the users who own restaurants can edit them:
def edit?
  # If user is owner
  if user == record.user
    true
  # Otherwise
  else
    false
  end
  # How to redirect? (will just see error message)
end
# In fact, if edit in application_policy.rb calls update, we don't need it in the restaurant_policy.rb

# Note the above syntax (longhand) is equivalent to the below syntax (shorthand)
def update?
  user == record.user
end

def destroy?
  user == record.user
end

# Need to update views to see front-end
<% if policy(Restaurant).create? %>
  <%= link_to "New restaurant", new_restaurant_path %>
<% end %>

>


# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController
  def index
    @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end
end


# INDEX

# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController
  def index
    @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end
end
# This is looking at Scope of restaurant_policy.rb

# app/policies/restaurant_policy.rb
class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end
end

# Want to hide edit and delete buttons? One way is to do it in view (index.html.erb)

<% if current_user == restaurant.user %>
  <td><%= link_to 'Edit', edit_restaurant_path(restaurant) %> </td>
<% end %>

>
# Can also do it with pundit in view (index.html.erb)
# Maybe better to use pundit as we're already using it in backend

<% if policy(restaurant).edit? %>
   <td><%= link_to 'Edit', edit_restaurant_path(restaurant) %> </td>
<% end %>

>
# Can do same with Destroy action
<% if policy(restaurant).destroy? %>
   <td><%= link_to 'Destroy', restaurant, method: :delete, data: { confirm: 'Are you sure?' } %> </td>
<% end %>

>
# Views (index.html.erb) - Create new restaurant
<% if policy(Restaurant).new? %>
  <%= link_to 'Create a New Restaurant', new_restaurant_path %>
<% end %>

>






