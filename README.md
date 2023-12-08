# GLBRC Dashboard

## Recommended setup
Ruby version: 3.2.x

Rails version: 7.1.x

## Requirements
Please ensure that you have postgres install on your machine in order to run this project.
For my development environment I used Postgres 14.

## Running the application locally
In order to run this app locally:
* Clone the repo
* Run `bundle install`
* Run `rake db:create` to create the database
* Run `rake db:migrate` to run the migrations
* Run `rake db:seed` to seed the DB with initial data
* You should be able to start the app with `rails s` command
