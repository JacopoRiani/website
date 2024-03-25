# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Deleting projects..."
Project.destroy_all

#Create projects in database
Project.create!(title: 'Venues Suburbs Gap', details: 'Analysis of the venues more likely to be chosen by the bookers in the main Australian cities using PowerBi')
Project.create!(title: 'Master Thesis', details: 'Analysis and forecast of the demand in the Supply Chain')
