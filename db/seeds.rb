# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

product1 = Product.create({name: 'apple', description: 'physics', price_in_cents: 100})
product2 = Product.create({name: 'pear', description: "Ding's favorite", price_in_cents: 200})
product3 = Product.create({name: 'AK-47', description: "killer", price_in_cents: 10000})
