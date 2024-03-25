# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#Create projects in database
Project.create!(title: "thanh", details: "Details for Thanh's project")
Project.create!(title: "dimitri", details: "Details for Dimitri's project")
Project.create!(title: "germain", details: "Details for Germain's project")
Project.create!(title: "damien", details: "Details for Damien's project")
Project.create!(title: "julien", details: "Details for Julien's project")
