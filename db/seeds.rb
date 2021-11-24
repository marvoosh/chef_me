# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all

user1 = User.create(first_name: 'Marva', last_name: 'Noah', email: 'marva@test.com', password: '123123')

puts 'Creating ingridients'
garlic = Ingredient.create(name: 'garlic')
thai_chili = Ingredient.create(name: 'Thai chili')
green_onion = Ingredient.create(name: 'green onion')
lemon = Ingredient.create(name: 'lemon juice')
soy = Ingredient.create(name: 'soy sauce')
water = Ingredient.create(name: 'water')
sweetener = Ingredient.create(name: 'sweetener')
black_pepper = Ingredient.create(name: 'black pepper')
sesame = Ingredient.create(name: 'sesame seeds')
avocado = Ingredient.create(name: 'avocado')
cucamber = Ingredient.create(name: 'cucumber')

zucchini = Ingredient.create(name: 'zucchini')
somen = Ingredient.create(name: 'somen noodles')
onion = Ingredient.create(name: 'onion')
sugar = Ingredient.create(name: 'sugar')
chili_oil = Ingredient.create(name: 'chili oil')
puts 'Ingrideients finished'

puts 'Creating recipes'
mayak_avocado = Recipe.create(
  name: 'Mayak Avocado',
  cook_time: 20,
  servings: 4,
  cuisine: 'Korean',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Mayak-Avocado/i-DhXXCbB/0/5353428c/X3/840A9833-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Mayak Avocado, Korean Marinated Avocado Recipe! This simple,\neasy & quick avocado recipe will change your life!',
  instructions: '1.Combine chopped garlic, chili, green onion, lemon juice, soy sauce, water, agave nectar, black pepper, and sesame seeds in a large airtight container. Give a good mix.\n2.Cut firm avocado lengthwise around the seed. Open and remove pits from avocados. Cut them into quarters, and carefully peel. Cut avocados into large chunks and add into marinate sauce. Add your choice of diced cucumber or cherry tomatoes.\nCarefully cover avocado chunks with marinating, be gentle because avocados are easy to break down. You can serve immediately or cover and marinate for 30 minutes before serving. You can serve by itself as a snack/appetizer, pair with crackers, make avocado toast or serve with warm cooked rice. Enjoy!'
)
zucchini_noodles = Recipe.create(
  name: 'Zucchini Noodles',
  cook_time: 10,
  servings: 3,
  cuisine: 'Asian',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Zucchini-Noodles/i-gwk2BTV/0/01630733/X3/840A8976-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Easy Zucchini Noodles Recipe!',
  instructions: '1.Bring a large pot of water to a boil, cook somen by following directions of package you’re using. When somen has 1 minute to finish, add zucchini & onion into pot and boil it together.\n2.Drain and rinse under cold water. Drain completely and place in a large mixing bowl. Add soy sauce, nectar, and chili oil then mix well. Garnish with sesame seeds and enjoy!'
)
puts 'Recipes finished'

puts 'Creating recipe_ingridients'
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: zucchini.id,
  quantity: 1,
  unit: 'sliced'
)
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: somen.id,
  quantity: 3,
  unit: 'units'
)
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: onion.id,
  quantity: 0.5,
  unit: 'sliced'
)
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: soy.id,
  quantity: 4,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: sugar.id,
  quantity: 2,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: chili_oil.id,
  quantity: 3,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: zucchini_noodles.id,
  ingredient_id: sesame.id,
  quantity: 1,
  unit: 'tsp'
)

RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: garlic.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: thai_chili.id,
  quantity: 2,
  unit: 'chopped'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: green_onion.id,
  quantity: 3,
  unit: 'chopped'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: lemon.id,
  quantity: 4,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: lemon.id,
  quantity: 0.5,
  unit: 'cup'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: soy.id,
  quantity: 0.5,
  unit: 'cup'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: water.id,
  quantity: 0.5,
  unit: 'cup'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: sweetener.id,
  quantity: 2,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: black_pepper.id,
  quantity: 0.25,
  unit: 'tsp'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: sesame.id,
  quantity: 2,
  unit: 'tsp'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: avocado.id,
  quantity: 4,
  unit: 'units'
)
RecipeIngredient.create(
  recipe_id: mayak_avocado.id,
  ingredient_id: cucamber.id,
  quantity: 3,
  unit: 'oz'
)
puts 'Finished recipe_ingridients'
puts 'Finished seeding'
