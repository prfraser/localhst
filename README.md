# Overview
  1.Summary
  
  2.Requirements
  
  3.Wireframing
  
  4.Workflow
  
  5.User Stories
 
  6.ERD
  
  7.Project plan & Estimation
  
  8.Tools
  
  9.Installation
  
  10.Bugs

# 1. Summary 
Problem:
People need a place to find information about things to do in different places all over the world. Currently there is no place to get a information specific to the location and activity you are interested in all linked together in one document. Services such as trip advisor do provide specific information about locations, however they do not link together multiple locations from different activities, nor do they provide detailed local knowledge and information to make for a personal experience. 

Solution:
Localhst is a website for tourists or just people looking for an adventure. Users are able to make a tour/guide of any location and any activity and accept tips for their hard work, for example, a cycling street art tour of Melbourne or a walking food tour of Brisbane. Users are also able to search for tours of any location and filter for certain activities or modes of transport. 

Website: https://localhst.herokuapp.com/

# 2. Requirements
*Create your application using Ruby on Rails.

*Demonstrate knowledge of Rails conventions.

*Use postgresql database in development.

*Use an API (eg. Omniauth, Geocoding, Maps, other..).

*Use appropriate gems.

*Use environmental variables to protect API keys etc. (dotenv)

*Implement a payment system for your product. (e.g. Stripe)

*Your app must send transactional emails (eg. using Mailgun).

*Your app should have an internal user messaging system.

*Your app will have some type of searching, sorting and/or filtering capability.

*Your app will have some type of file uploading capability (eg. images).

*Your app will have authentication (eg. Devise, must have full functionality in place).

*Your app will have authorisation (users have restrictions on what they can see and edit).

*Your app will have an admin dashboard for the admin user to administrate the site.

*Document your application with a README that explains how to setup, configure and use your application.

# 3. Wireframing
https://balsamiq.cloud/saqmz/p5lep
![picture alt](https://preview.ibb.co/fzcgNb/Screen_Shot_2017_11_07_at_12_21_03_pm.png "Wireframe")

# 4. Workflow 
![picture alt](https://preview.ibb.co/ixKvhb/Screen_Shot_2017_11_07_at_1_32_16_pm.png "Workflow")

# 5. User Stories
https://trello.com/b/57XBTkKf/localhst

# 6. ERD
![picture alt](https://preview.ibb.co/bQGEaw/erd.jpg "ERD")

https://ibb.co/dhRrNb

# 7. Project plan & Estimation
We were given 2 weeks to complete this project. The project had alot of requirements, and my idea involved using tools I had no prior experience with. With this in mind I gave myself generous time estimates for each task.

2 to 3 days for: User stories / Wireframes / Workflow and ERD.

2 to 3 days for: Basic CRUD functionality of Users / Tours / Comments and Reviews.

2 Days for: Implementing tools I was familiar with: Bootstrap, Mailers, Tags, Paperclip, Ratings.

4 Days for: Implementing tools I was not familiar with: Google Maps, Stripe Connect, Medium Editor, Active Admin

1 Day to complete all the documentation involved.

There were certain tasks that took less time that expected and others longer. All in all I finished all the major features with time to spare and spent the extra time working on bugs and docs.

# 8. Tools
1. Trello
2. Balsamiq
3. Draw.io
4. Rails-erd
5. Bootstrap
6. Gems: 'rails-erd', 'mailgun-ruby', 'activeadmin', 'httparty', 'stripe', 'medium-editor-rails', 'dotenv-rails', 'geocoder', 'devise', 'bootswatch-rails', 'bootstrap-sass', 'devise-bootstrap-views', 'jquery-rails', 'paperclip', 'nested_scaffold', 'ratyrate', 'acts-as-taggable-on', 'aws-sdk'

# 9. Installation
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

# 10. Bugs
Current known bugs are:
Adding markers with invalid addresses causes errors with google maps.
