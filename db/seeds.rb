# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
[
  {first_name: "Abebe", last_name: "Kebede", age: 24},
  {first_name: "Mahlet", last_name: "Worku", age: 26},
  {first_name: "Alemu", last_name: "Bekele", age: 25},
].each do |p|
  Person.create!(**p)
end
