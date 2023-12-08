# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# AppLinks
[{
   name: 'Google',
   description: 'Search Engine',
   color: 'red',
   default_status: true,
   link: 'https://www.google.com/'
 },
 {
   name: 'UW Madison',
   description: 'UW Madison Homepage',
   color: 'blue',
   default_status: false,
   link: 'https://www.wisc.edu/'
 },
 {
   name: 'GLBRC',
   description: 'Great Lakes Bioenergy Research Center',
   color: 'yellow',
   default_status: true,
   link: 'https://www.glbrc.org/'
 },
 {
   name: 'WEI',
   description: 'Wisconsin Energy Institute',
   color: 'green',
   default_status: false,
   link: 'https://energy.wisc.edu/'
 },
 {
   name: 'X (formerly know as Twitter)',
   description: 'Microblogging platform',
   color: 'purple',
   default_status: false,
   link: 'https://twitter.com/'
 },
 {
   name: 'Ruby on Rails',
   description: 'Web Application Framework',
   color: 'red',
   default_status: false,
   link: 'https://rubyonrails.org/'
 },
 {
   name: 'Vue.js',
   description: 'Front-end JavaScript Framework',
   color: 'green',
   default_status: false,
   link: 'https://vuejs.org/'
 },
 {
   name: 'City of Madison',
   description: 'Madison City Government',
   color: 'blue',
   default_status: false,
   link: 'https://www.cityofmadison.com/'
 },
 {
   name: 'Henry Vilas Zoo',
   description: 'Henry Vilas Zoo Homepage',
   color: 'blue',
   default_status: false,
   link: 'https://www.henryvilaszoo.gov/'
 }].each do |app_link|
  AppLink.create(app_link)
end