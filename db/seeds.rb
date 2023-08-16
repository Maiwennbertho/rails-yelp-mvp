# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

junior_resto = { name: 'Junior resto', address: '10 rue de la paix', phone_number: '333-450', category: 'chinese' };
les_pizza_de_la_mama ={ name: 'Les pizzas de la mama', address: '15 rue di dolce', phone_number: '555-5678', category: 'italian' };
arikuu = { name: 'Arikuu', address: '18 avenue de Naruto', phone_number: '555-9876', category: 'japanese' };
le_nôtre = { name: 'Le nôtre', address: '72 route du château', phone_number: '555-5432', category: 'french' };
fricadas = { name: 'Fricadas', address: '12 rue de la frite', phone_number: '555-8765', category: 'belgian' };

[junior_resto, les_pizza_de_la_mama, arikuu, le_nôtre, fricadas].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
