# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts "Deleting projects..."
# Project.destroy_all

#Create projects in database
# Clear existing data
Project.destroy_all

# Create new projects
venues_suburbs_gap = Project.create!(title: "Venues Suburbs Gap", details: "Analysis of the venues more likely to be chosen by the bookers in the main Australian cities using PowerBi.")

venues_photo = File.open(Rails.root.join("app/assets/images/leadfeed.png"))
venues_suburbs_gap.image.attach(io: venues_photo, filename: "leadfeed.png", content_type: "image/png")
venues_suburbs_gap.save!

master_thesis = Project.create!(title: "Master Thesis", details: "Analysis and forecast of the motors demand in the Supply Chain. The forecast has been done through Arima model in R software.")

thesis_photo = File.open(Rails.root.join("app/assets/images/thesis.png"))
master_thesis.image.attach(io: thesis_photo, filename: "thesis.png", content_type: "image/png")
master_thesis.save!

tripquesters = Project.create!(title: "TripQuest", details: "The best way to plan your trips and earn rewards!")

trip_photo = File.open(Rails.root.join("app/assets/images/tripque.png"))
tripquesters.image.attach(io: trip_photo, filename: "tripque.png", content_type: "image/png")
tripquesters.save!

pokemarkets = Project.create!(title: "Pokemarket", details: "Web application using Ruby, JS, html and css")

poke_photo = File.open(Rails.root.join("app/assets/images/pokemarket.png"))
pokemarkets.image.attach(io: poke_photo, filename: "pokemarket.png", content_type: "image/png")
pokemarkets.save!

road_accident = Project.create!(title: "Road Accidents in Italy", details: "Analysis of the road accident in Italy by using available Istat data")

road_photo = File.open(Rails.root.join("app/assets/images/caraccident.png"))
road_accident.image.attach(io: road_photo, filename: "caraccident.png", content_type: "image/png")
road_accident.save!

levabus = Project.create!(title: "Levabus", details: "Page of a bus fleet using Access and SQL, VBA")

leva_photo = File.open(Rails.root.join("app/assets/images/database.png"))
levabus.image.attach(io: leva_photo, filename: "database.png", content_type: "image/png")
levabus.save!
