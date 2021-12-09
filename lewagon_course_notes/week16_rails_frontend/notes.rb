# New project in terminal:
rails new front-end-app

# Generate controller:
rails generate controller pages home

# update root in config/routes.rb
Rails.application.routes.draw do
  root to: 'pages#home'
end

# SCSS - write less and simpler CSS
# Can define graphic variables in scss file. For example:

$gray: #F4F4F4;
$spacer: 8px;

body {
  background: $gray;
}

.btn {
  padding: $spacer ($spacer * 3);
}

# SCSS Nesting - This:

.banner {
  background: red;

  h1 {
    font-size: 50px;
  }
}

# Is the same as this:

.banner {
  background: red;
}

.banner h1 {
  font-size: 50px;
}
# SCSS Chaining -  This:
a {
  color: grey;

  &:hover {
    color: black;
  }
}

# Will generate this CSS:

a {
  color: grey;
}

a:hover {
  color: black;
}

# SCSS Partial - Partial file names start with underscore.

# _home.scss
body {
  font-family: Helvetica;
}

# application.scss
@import "home";

# Useful resource: guides.rubyonrails.org/asset_pipeline

# Javascript implemented with sprocket rails gem. Deals with app>assets folder

# CSS is loaded in the layout
app/views/layouts/application.html.erb

# <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>

# remove original stylesheet or change name to .scss
rm app/assets/stylesheets/application.css
touch app/assets/stylesheets/application.scss

#What kind of css would you keep in the application.scss vs the _pages.scss partial?

# Concatenation
app/assets/stylesheets/application.scss
# Add to top of the page:
@import "pages"; # Imports _pages.scss

# Fingerprinting
/assets/application-f0d704[...]5794.css
# No more hard refreshes needed - gives file new name with new token every time there is a CSS change

# Minification / Compression
# - SASS Compressor
# - Gzip

config/environment/production.rb
config.assets.css_compressor = :sass

# When deploying, Heroku will precompile to generate final assets in public/assets.
# Minification / compression:
echo "public/assets" >> .gitignore # Git ignore incase published to github
rails assets:precompile
# Note: Don't really need this command in development.
rails assets:clobber # Use this to clean up - gets rid of public folder

#jQuery and Popper.js are Javascript Dependencies (Popper deals with pop ups)


# In the project directory terminal:
yarn add bootstrap@4.6
# Now just import the CSS
app/assets/stylesheets/application.scss
@import "bootstrap/scss/bootstrap"; # Picks it up in node_modules!

# Start fiddling with bootstrap

# Can add these to Gemfile
gem 'autoprefixer-rails', '10.2.5'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'simple_form'

# Then in terminal:
bundle install
rails generate simple_form:install --bootstrap

# updating to Le Wagon’s Stylesheets. In terminal:
rm -rf app/assets/stylesheets
curl -L https://github.com/lewagon/rails-stylesheets/archive/master.zip > stylesheets.zip
unzip stylesheets.zip -d app/assets && rm -f stylesheets.zip && rm -f app/assets/rails-stylesheets-master/README.md
mv app/assets/rails-stylesheets-master app/assets/stylesheets

# Enable bootstrap responsiveness
app/views/layouts/application.html.erb

<!DOCTYPE html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <!-- [...] -->

# Override bootstrap properties with your own variables in stylesheets>config
# Read bootstrap documentation for more info

# Stylesheets Architecture:
.
├── components
│   ├── _index.scss               # Main components stylesheet
│   ├── _alert.scss
│   └── _navbar.scss
├── config
│   ├── _bootstrap_variables.scss # Bootstrap variables override
│   ├── _colors.scss              # Colors variables 🎨
│   └── _fonts.scss               # Fonts variables ✍️
├── pages
│   ├── _index.scss               # Main pages stylesheet
│   └── _home.scss
└── application.scss              # Main stylesheet - Open it!


# Images - images live in app>assets>images

# <%= image_tag "logo.png", alt: "Le Wagon", width: 200 %>

# Images also get fingerprinted (check HTML tab)

#Using images in CSS:
#Use asset-url or asset-path in CSS files.

<div class="logo"></div>
# app/assets/stylesheets/_logo.scss

.logo {
  background-image: asset-url('logo.png');
  background-size: cover;
  height: 100px;
  width: 250px;
}

# Can use curl command in terminal to download things. For example, the below command means:
# Download this file from this site, then put it in this folder and rename it to logo.png
curl https://raw.githubusercontent.com/lewagon/fullstack-images/master/lewagon_logo.png > \
  app/assets/images/logo.png



# JAVASCRIPT

# Instead of app/assets/javascripts we now use Webpack

app/views/layouts/application.html.erb
# In head:
  <!-- [...] -->
  <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload', defer: true %>
  <!-- loads app/javascript/packs/application.js -->
</head>
# Add defer: true to wait for the HTML to be loaded before running the script

app/javascript/packs/application.js
# Test it out:
console.log("Hello from app/javascript/packs/application.js!");

config/webpack/environment.js
# Can just copy and paste this in environment.js
const { environment } = require('@rails/webpacker')

# Bootstrap 4 has a dependency over jQuery & Popper.js:
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment


 app/javascript/packs/application.js
 # Make sure to import bootstrap here as well
import 'bootstrap';


# Implement function in separate files. export them
# import function in the pack and use it.


# NAVBAR

# New file, e.g.:
app/views/shared/_navbar.html.erb
# or
app/views/shared/_navbar.html.erb

application.html.erb
# In body, above yield
# <%= render "components/navbar" %>


# app/views/pages/home.html.erb

<div class="home-banner">
  <h1>Le Wagon</h1>
</div>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-6">
      <%= "Lorem ipsum dolor sit amet, consectetur adipisicing elit " * 100 %>
    </div>
  </div>
</div>


# app/assets/stylesheets/components/_navbar.scss
.navbar-lewagon {
  // [...]
  background-color: transparent;
  transition: 0.5s background-color ease;
}

.navbar-lewagon-white {
  background-color: white;
}


# app/assets/stylesheets/components/_banner.scss

.home-banner {
  background-image: url('https://kitt.lewagon.com/placeholder/cities/random');
  background-size: cover;
  height: 100vh;
  color: #eee;
  text-align: center;
  padding-top: 40vh;
}

# app/assets/stylesheets/components/_index.scss
@import "banner";


# app/javascript/components/navbar.js

const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

# Call function in  app/javascript/packs/application.js
import { initUpdateNavbarOnScroll } from '../components/navbar';

document.addEventListener('turbolinks:load', () => {
  # call your JS functions here
  initUpdateNavbarOnScroll();
});

# Turbolinks - loads when site loads and when navigation happens

# Using NPM packages

# In project directory terminal:
yarn add typed.js

# app/views/pages/home.html.erb
<p>
  <span id="banner-typed-text"></span>
</p>

# app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Learn to code"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

# app/javascript/packs/application.js
// [...]
import { loadDynamicBannerText } from '../components/banner';

document.addEventListener('turbolinks:load', () => {
  # Call your JS functions here
  // [...]
  loadDynamicBannerText();
});


# Webpack Hot Reloading
webpack-dev-server
# Run in separate terminal - listens for new JS changes and refreshes automatically


# TAILWIND gem - alternative to Bootstrap
https://tailwindcss.com/docs/installation

# Add gems in gemfile, then run bundle install in terminal
gem 'simple_form'
gem 'tailwindcss-rails'
gem 'simple_form-tailwind'

# Installation commands in terminal: 
rails tailwindcss:install
rails g simple_form:tailwind:install



