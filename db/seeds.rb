# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conference.find_or_create_by(name: "Western")

Division.find_or_create_by(name:"Pacific", conference: Conference.first)

Coach.find_or_create_by(name:"Luke Walton", years_coached: 1)

Owner.find_or_create_by(name:"Magic Johnson")

Team.find_or_create_by(name: "Lakers", city: "Los Angeles", arena: "Staples Center", division: Division.first, coach: Coach.first, owner: Owner.first )

Player.find_or_create_by(first_name: "Kobe",
  last_name: "Bryant",
  position: "Shooting Guard",
  feet: 6,
  inches: 6,
  team: Team.first )
