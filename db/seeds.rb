# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Currency.create([
  {name: "united states dollar", code: "USD"},
  {name: "swedish krone", code: "SEK"},
  {name: "great britian pound", code: "GBP"},
  {name: "euro", code: "EUR "}
])

User.create([
  {name: "muzammil", currency_id: 1},
  {name: "john doe", currency_id: 2},
  {name: "jane foe", currency_id: 3}
])

Item.create([
  {name: "wallet", currency_id: 1},
  {name: "iphone", currency_id: 2}
])
