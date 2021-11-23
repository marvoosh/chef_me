# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(first_name: 'Marva', last_name: 'Noah', email: 'marva@test.com', password: '123123')

puts 'Creating ingridients'
Ingredients.create(name: 'garlic')
Ingredients.create(name: 'Thai chili')
Ingredients.create(name: 'green onion')
Ingredients.create(name: 'lemon')
Ingredients.create(name: 'soy sauce')
Ingredients.create(name: 'water')
Ingredients.create(name: 'sweetener')
Ingredients.create(name: 'black pepper')
Ingredients.create(name: 'sesame seeds')
Ingredients.create(name: 'avocado')
Ingredients.create(name: 'cucumber')
puts 'Ingrideients finished'

puts 'Creating recipes'
Recipe.create(
  name: 'mayak avocado',
  cook_time: 20,
  servings: 4,
  cuisine: 'Korean',
  description: 'Mayak Avocado, Korean Marinated Avocado Recipe! This simple,\neasy & quick avocado recipe will change your life!',
  instructions: '1.Combine chopped garlic, chili, green onion, lemon juice, soy sauce, water, agave nectar, black pepper, and sesame seeds in a large airtight container. Give a good mix.\n2.Cut firm avocado lengthwise around the seed. Open and remove pits from avocados. Cut them into quarters, and carefully peel. Cut avocados into large chunks and add into marinate sauce. Add your choice of diced cucumber or cherry tomatoes.\nCarefully cover avocado chunks with marinating, be gentle because avocados are easy to break down. You can serve immediately or cover and marinate for 30 minutes before serving. You can serve by itself as a snack/appetizer, pair with crackers, make avocado toast or serve with warm cooked rice. Enjoy!'
)
puts 'Recipes finished'
