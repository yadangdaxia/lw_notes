# Air BNB #

# Authentication - who is signed in on app
# Use Devise Gem for authentication
# LeWagon templates: Can start with simple form then use preset minimal one

# Add gem 'devise' to project's gemfile (and bundle install + restart server)
gem 'devise'
# Then run:
rails generate devise:install

# Config > initializers > devise.rb
# Will have lots of customizations you can comment in/out

# Create model
rails generate devise User
# **NOTE: make the model that has foreign keys first. **
# See Schema for details
https://kitt.lewagon.com/db/48023

# The rails generate devise User line generates:

# app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# Skipping login for some pages
# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end

class ApplicationController < ActionController::Base
  # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
# Note: Devise doesn't allow access unless otherwise stated


# Check rails routes and will see many more (can filter using grep) e.g.
rails routes | grep new_

# View already created - check localhost:3000/users/sign_in
# After registering,

# Open console to check
rails c
User.count
User.first

# Add sign out in navbar
# views>shared>_navbar.html.erb

# home.html.erb
<% if user_signed_in? %>
  <%= current_user.email %>
<% end %>

# Use these helpers ->

user_signed_in?
# => true / false
current_user
# => User instance / nil

# Can generate views (note: there are still views available even if you don't create them)
rails generate devise:views

# views>devise>sessions>new.html.erb
# Style form here in HTML

git branch
# lists branches
