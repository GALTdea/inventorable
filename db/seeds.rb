# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

Items = Item.create([
  {name: "Tomatoes", description: "Red and Juicy", city_id: City.last.id, quantity: 15678},
  {name: "Bananas", description: "Yellow", city_id:  City.find_by(name: "Seattle").id, quantity: 34567},
  {name: "Tables", description: "Super flat ", city_id: City.find_by(name: "Los Angeles").id, quantity: 234},
  {name: "Chairs", description: "Restful", city_id: City.find_by(name: "Los Angeles").id, quantity: 567},
  {name: "Pens", description: "red and blue", city_id:  City.find_by(name: "Torrance").id, quantity: 45678},
  {name: "Couches", description: "Comfortable", city_id: City.find_by(name: "New York").id, quantity: 234},
  {name: "Avocados", description: "Green", city_id:  City.find_by(name: "Seattle").id, quantity: 345678},
  {name: "Lemons", description: "Green and sweet", city_id: City.find_by(name: "New York").id, quantity: 456789},
  {name: "Desks", description: "Very FLT", city_id:  City.find_by(name: "Torrance").id, quantity: 799},
  {name: "TV's", description: "Flat tv's", city_id: City.find_by(name: "New York").id, quantity: 234},
  {name: "Monitors", description: "For your office", city_id:  City.find_by(name: "Torrance").id, quantity: 678},
  {name: "Pencils", description: "Mechanical", city_id:  City.find_by(name: "Seattle").id, quantity: 100000 }
])



# la
# latitude: 34.052235
# longitude: -118.243683 


# SD
# latitude: 32.7174
# longitude: -117.1628

# Seattle
# latitude: 47.608013
# longitude: -122.335167


# New York
# latitude: 40.7128
# longitude: -74.0060
# 

# Torrance
# latitude: 33.840763
# longitude: -118.345413