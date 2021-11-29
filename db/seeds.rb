# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

RecipeIngredient.destroy_all
SavedRecipe.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
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

sesame_oil = Ingredient.create(name: 'sesame oil')
pepper_flakes = Ingredient.create(name: 'red pepper flakes')
tofu = Ingredient.create(name: 'fried tofu')
sea_asparagus = Ingredient.create(name: 'sea asparagus')
puts 'Ingrideients finished'

puts 'Creating recipes'
mayak_avocado = Recipe.create(
  name: 'Mayak Avocado',
  cook_time: 20,
  servings: 4,
  cuisine: 'Korean',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Mayak-Avocado/i-DhXXCbB/0/5353428c/X3/840A9833-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Mayak Avocado, Korean Marinated Avocado Recipe! This simple,\neasy & quick avocado recipe will change your life!',
  instructions: '1. Combine chopped garlic, chili, green onion, lemon juice, soy sauce, water, agave nectar, black pepper, and sesame seeds in a large airtight container. Give a good mix.\n2. Cut firm avocado lengthwise around the seed. Open and remove pits from avocados. Cut them into quarters, and carefully peel. Cut avocados into large chunks and add into marinate sauce. Add your choice of diced cucumber or cherry tomatoes.\n3. Carefully cover avocado chunks with marinating, be gentle because avocados are easy to break down. You can serve immediately or cover and marinate for 30 minutes before serving. You can serve by itself as a snack/appetizer, pair with crackers, make avocado toast or serve with warm cooked rice. Enjoy!'
)
zucchini_noodles = Recipe.create(
  name: 'Zucchini Noodles',
  cook_time: 10,
  servings: 3,
  cuisine: 'Asian',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Zucchini-Noodles/i-gwk2BTV/0/01630733/X3/840A8976-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Easy Zucchini Noodles Recipe!',
  instructions: '1. Bring a large pot of water to a boil, cook somen by following directions of package you’re using. When somen has 1 minute to finish, add zucchini & onion into pot and boil it together.\n2. Drain and rinse under cold water. Drain completely and place in a large mixing bowl. Add soy sauce, nectar, and chili oil then mix well. Garnish with sesame seeds and enjoy!'
)
poke_bowl = Recipe.create(
  name: 'Tofu Poke Bowel',
  cook_time: 15,
  servings: 4,
  cuisine: 'Hawaiian',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Tofu-Poke/i-ZwhXLn6/0/c30ac9da/X3/840A9418-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Healthy Poke with Tofu!',
  instructions: '1. Place sliced onions into ice water and let it sit for 5 to 10 minutes. This way we can reduce pungent raw onion flavor and it will give a refreshing crunch bite.\n2. Combine soy sauce, sesame oil, salt, sesame seeds, red pepper flakes, and msg in a mixing bowl. \n3. Drain onion and tap dry on a paper towel. Add tofu, onion, and sea asparagus into a mixing bowl and give it a toss. Transfer to an air-tight container and place in a refrigerator at least overnight before serving. This poke will last 7 days in a refrigerator. Enjoy with warm cooked rice! '
)
puts 'Recipes finished'

puts 'Creating recipe_ingridients'
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: onion.id,
  quantity: 0.25,
  unit: 'diced'
)
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: soy.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: sesame_oil.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: sesame.id,
  quantity: 0.5,
  unit: 'tsp'
)
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: pepper_flakes.id,
  quantity: 0.25,
  unit: 'tsp'
)
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: tofu.id,
  quantity: 12,
  unit: 'oz'
)
RecipeIngredient.create(
  recipe_id: poke_bowl.id,
  ingredient_id: sea_asparagus.id,
  quantity: 1.5,
  unit: 'oz'
)

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


puts 'faker seed'
30.times do
  name = Faker::Food.dish
  name_file = name.split.join('_')
  file = URI.open("https://loremflickr.com/320/240/#{name_file}")
  cuisine, = Faker::Food.ethnic_category.split
  recipe = Recipe.create(
    name: name,
    cook_time: [10, 15, 20, 25, 30, 40, 45].sample,
    servings: rand(2..6),
    cuisine: cuisine,
    image_url: file.base_uri,
    description: Faker::Food.description,
    instructions: '1. Cut\n2. Cook\n3. Eat'
  )
  4.times do
    ingredient = Ingredient.create(name: Faker::Food.ingredient.downcase)
    RecipeIngredient.create(
      recipe_id: recipe.id,
      ingredient_id: ingredient.id,
      quantity: [0.5, 1, 2, 3].sample,
      unit: ['cup', 'tsp', 'tbsp', 'ml', 'gr'].sample
    )
  end
  3.times do
    ingredient = Ingredient.create(name: Faker::Food.vegetables)
    RecipeIngredient.create(
      recipe_id: recipe.id,
      ingredient_id: ingredient.id,
      quantity: [0.5, 1, 2, 3].sample,
      unit: ['cup', 'tsp', 'tbsp', 'ml', 'gr'].sample
    )
  end
end
puts 'Finished seeding'
