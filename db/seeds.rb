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
puts "Cleaning database..."
Project.destroy_all

# Create new projects
venues_suburbs_gap = Project.create!(title: "Venues Suburbs Gap", details: "Analysis of the venues more likely to be chosen by the bookers in the main Australian cities using PowerBi.")

venues_photo = File.open(Rails.root.join("app/assets/images/leadfeed.png"))
venues_suburbs_gap.image.attach(io: venues_photo, filename: "leadfeed.png", content_type: "image/png")
venues_suburbs_gap.save!

master_thesis = Project.create!(title: "Master Thesis", details: "Analysis and forecast of the motors demand in the Supply Chain. The forecast has been done through Arima model in R.")

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




# puts "Creating books..."

# ikigai = {title: "Ikigai", subtitle: "The Japanese secret to a long and Happy Life", description: "The book is about the Japanese secret to a long and happy life. It is a book that helps you to find your purpose in life."}
# thenudge = {title: "The Nudge", subtitle: "Think differently!", description: "The book is a milestone in the field of marketing. It depicts the opportunities that can be achieved by using simple, small details in any kind of marketing communication. How can a simple detail drastically change the vision and feeling? Even if it seems unreal, it is the key to holding the attention of the beholder! In recent years, several private companies as well as public organizations have tried to use this type of tool to highlight elements that keep the audience's attention. Has it been worth the effort? Statistically, it has been proven that by adopting these small measures, the public has changed their minds by a large percentage.  Once again, communication plays a crucial role in shaping the emotions of the audience. The book emphasizes the fact that sometimes we want to be influenced by others to take the right path, otherwise we might get lost in unnecessary time wasting evaluating what is best for us. Make a decision you are most passionate about and whatever comes up with the program, stick with it. Whether it is worthwhile or not, you will still learn more than you knew before. The more you know, the more you are worth!"}
# enzoferrari = {title: "Enzo Ferrari", subtitle: "The definitive biography of an icon", description: "The book"}

# [ikigai, thenudge, enzoferrari].each do |attributes|
#   book = Book.create!(attributes)
#   puts "Created #{book.name}"
# end
# puts "Finished!"
