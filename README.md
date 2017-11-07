# Overview
  1.Summary
  
  2.Requirements
  
  3.Wireframing
  
  4.Workflow
  
  5.Userstories
  
  6.ERD
  
  7. Tools
  
  8. Installation

# 1. Summary 
Localhst is a website for tourists or just people looking for an adventure. Users are able to make a tour/guide of any location and any activity and accept tips for their hard work, for example, a cycling street art tour of Melbourne or a walking food tour of Brisbane. Users are also able to search for tours of any location and filter for certain activities or modes of transport. 

Website: https://localhst.herokuapp.com/

# 2. Requirements
Create your application using Ruby on Rails.
Demonstrate knowledge of Rails conventions.
Use postgresql database in development.
Use an API (eg. Omniauth, Geocoding, Maps, other..).
Use appropriate gems.
Use environmental variables to protect API keys etc. (dotenv)
Implement a payment system for your product. (e.g. Stripe)
Your app must send transactional emails (eg. using Mailgun).
Your app should have an internal user messaging system.
Your app will have some type of searching, sorting and/or filtering capability.
Your app will have some type of file uploading capability (eg. images).
Your app will have authentication (eg. Devise, must have full functionality in place).
Your app will have authorisation (users have restrictions on what they can see and edit).
Your app will have an admin dashboard for the admin user to administrate the site.
Document your application with a README that explains how to setup, configure and use your application.
# 3. Wireframing
![picture alt](https://preview.ibb.co/fzcgNb/Screen_Shot_2017_11_07_at_12_21_03_pm.png "Wireframe")

# 4. Workflow 
![picture alt](https://preview.ibb.co/ixKvhb/Screen_Shot_2017_11_07_at_1_32_16_pm.png "Workflow")

# 5. User Stories
https://trello.com/b/57XBTkKf/localhst

# 6. ERD
![picture alt](https://preview.ibb.co/bQGEaw/erd.jpg "ERD")

https://ibb.co/dhRrNb

# 7. Tools
1. Trello
2. Balsamiq
3. Draw.io
4. Rails-erd
5. Bootstrap
6. Gems: rails-erd', 'mailgun-ruby', 'activeadmin', 'httparty', 'stripe', 'medium-editor-rails', 'dotenv-rails', 'geocoder', 'devise', 'bootswatch-rails', 'bootstrap-sass', 'devise-bootstrap-views', 'jquery-rails', 'paperclip', 'nested_scaffold', 'ratyrate', 'acts-as-taggable-on', 'aws-sdk'

# 8. Installation
1. Clone the repo
2. run `bundle install` in terminal
3. run `rails db:migrate` in terminal
4. create a file called .env in the root of the directory. Populate the api keys with your own keys.

  GMAP_API=XXXX
  
  STRIPE_CLIENT_ID=XXXX
  
  STRIPE_CLIENT_SECRET=XXXX
  
  STRIPE_PUBLISHABLE_KEY=XXXX
  
  MAILGUN_API_KEY=XXXX
  
  MAILGUN_DOMAIN=XXXX
  
4. start server with `rails s`
5. navigate to https://localhost:3000 in your browser
