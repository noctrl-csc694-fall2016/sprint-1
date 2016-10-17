# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create sample activties
Activity.create!( name: "Golf Outing",
                  start_date: "2016-09-09 00:00:00 UTC",
                  end_date: "2016-09-19 00:00:00 UTC",
                  description: "Fun",
                  goal: "400",
                  notes: "Contact Jen for more information.")