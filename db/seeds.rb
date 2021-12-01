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
user2 = User.create(first_name: 'Thallia', last_name: 'Rosa', email: 'lia@test.com', password: '123123')

puts 'Creating ingridients'
avocado = Ingredient.create(name: 'avocado')
arborio = Ingredient.create(name: 'arborio rice')
baby_corn = Ingredient.create(name: 'baby corn')
black_pepper = Ingredient.create(name: 'black pepper')
broccoli = Ingredient.create(name: 'broccoli')
carrot = Ingredient.create(name: 'carrot')
canned_tomatoes = Ingredient.create(name: 'canned tomatoes')
cheddar = Ingredient.create(name: 'cheddar')
chicken_stock = Ingredient.create(name: 'chicken stock')
cucumber = Ingredient.create(name: 'cucumber')
curry = Ingredient.create(name: 'curry powder')
courgette = Ingredient.create(name: 'courgette')
chili_oil = Ingredient.create(name: 'chili oil')
chilli_powder = Ingredient.create(name: 'chilli powder')
chorizo = Ingredient.create(name: 'chorizo')
eggs = Ingredient.create(name: 'eggs')
feta = Ingredient.create(name: 'feta cheese')
filo = Ingredient.create(name: 'filo pastry')
garlic = Ingredient.create(name: 'garlic')
green_beans = Ingredient.create(name: 'green beans')
red_wine_vinegar = Ingredient.create(name: 'red wine vinegar')
green_onion = Ingredient.create(name: 'green onion')
lemon = Ingredient.create(name: 'lemon juice')
mangetout = Ingredient.create(name: 'mangetout')
olive_oil = Ingredient.create(name: 'olive oil')
onion = Ingredient.create(name: 'onion')
pak_choi = Ingredient.create(name: 'pak choi')
parmesan = Ingredient.create(name: 'parmesan cheese')
pepper_flakes = Ingredient.create(name: 'red pepper flakes')
peas = Ingredient.create(name: 'frozen peas')
pulses = Ingredient.create(name: 'pulses')
red_onion = Ingredient.create(name: 'red onion')
soy = Ingredient.create(name: 'soy sauce')
somen = Ingredient.create(name: 'somen noodles')
sugar = Ingredient.create(name: 'sugar')
sweetener = Ingredient.create(name: 'sweetener')
sesame = Ingredient.create(name: 'sesame seeds')
sesame_oil = Ingredient.create(name: 'sesame oil')
spinach = Ingredient.create(name: 'spinach')
spring_onion = Ingredient.create(name: 'spring onion')
sundried_tomato = Ingredient.create(name: sundried_tomato)
sushi_ginger = Ingredient.create(name: 'pickled sushi ginger')
sea_asparagus = Ingredient.create(name: 'sea asparagus')
thai_chili = Ingredient.create(name: 'Thai chili')
tortilla = Ingredient.create(name: 'tortilla')
tofu = Ingredient.create(name: 'fried tofu')
udon = Ingredient.create(name: 'udon noodles')
vinegar = Ingredient.create(name: 'vinegar')
water = Ingredient.create(name: 'water')
yogurt = Ingredient.create(name: 'yogurt')
zucchini = Ingredient.create(name: 'zucchini')


puts 'Ingridients finished'

puts 'Creating recipes'
quiche_traybake = Recipe.create(
  name: 'Speedy quiche traybake',
  cook_time: 40,
  servings: 4,
  cuisine: 'Vegetarian',
  image_url: 'https://img.jamieoliver.com/jamieoliver/recipe-database/118283765.jpg?tr=w-800,h-1066',
  description: 'This genius veggie quiche traybake takes the hassle out of making quiche from scratch.',
  instructions: '1. Preheat the oven to 180°C/350°F/gas 4.\n2. Grease a large 25cm by 35cm roasting tray with 1 teaspoon of olive oil. Crack the eggs into a bowl and beat with a fork.\n3. Layer the filo sheets into the tray, laying one sheet horizontally, and the next vertically, repeating as you layer, brushing a little of the egg between each sheet. (Make sure they cover the base of the tray and go up the sides so it can contain the filling.) Add a final brush to the last layer and scrunch up any excess pastry that hangs over.\n4. Finely slice the spring onions and add to the bowl. Coarsely grate the Cheddar cheese (reserving a little for the top) and the courgette, then add them to the bowl. Break the broccoli into florets, then thinly slice and add to the bowl. Season to perfection with sea salt and black pepper, then mix together.\5. Carefully pour the mixture into the prepared pastry case, spreading it out so it’s in an even layer, then sprinkle the remaining cheese over the top.\n6. Cook for 35 minutes, on the bottom of the oven, until the pastry is golden and the filling is set.'
)

chorizo_risotto = Recipe.create(
  name: 'Chorizo and Pea risotto',
  cook_time: 30,
  servings: 4,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-pea-risotto-974507b.jpg?quality=90&webp=true&resize=300,272',
  description: 'Using simple storecupboard and freezer ingredients, this pea and chorizo risotto makes an easy midweek meal.',
  instructions: '1. Heat the oil in a large frying pan, tip in the chorizo and fry until it is crisp and all the oil has been released. Remove a quarter of the chorizo with a slotted spoon and set aside.\n2. Tip the rice into the pan, stir to coat it in the oil and toast for a min or so, then pour in the vinegar. Once the vinegar has evaporated, add a ladleful of the stock, stir then, once absorbed, add a bit more. Continue doing this for about 20 mins until most of the stock has been absorbed and the rice has swollen but still has a slight bite.\n3. Tip in the peas, parmesan and the remaining stock. Give everything a good stir. Once the cheese has melted, season with black pepper, then divide between bowls, topping each portion with the remaining crisp chorizo and extra grated parmesan.'
)

dressed_beans = Recipe.create(
  name: 'Dressed beans',
  cook_time: 15,
  servings: 6,
  cuisine: 'Vegetarian',
  image_url: 'https://img.jamieoliver.com/jamieoliver/recipe-database/126291617.jpg?tr=w-800,h-1066',
  description: 'Dressed green beans with garlic and vinegar. Stands alone or as a side dish.',
  instructions: '1. Prep the mixed green and runner beans. Peel the garlic and finely grate into a little jug, add 2 tablespoons each of extra virgin olive oil and red wine vinegar, and a pinch of sea salt and black pepper, then mix well. Cover everything and store overnight.\n2. Cook the beans in a large pan of boiling water for 7 minutes, or until just soft. Drain well, then return to the pan and toss with the dressing. Serve hot or at room temperature.'
)

greek_pie = Recipe.create(
  name: 'Greek Style Pie',
  cook_time: 40,
  servings: 4,
  cuisine: 'Vegetarian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-491503_12-f496108.jpg?quality=90&webp=true&resize=300,272',
  description: 'A good fail-safe for your repertoire',
  instructions: '1. Put the spinach into a large pan. Pour over a couple tbsp water, then cook until just wilted. Tip into a sieve, leave to cool a little, then squeeze out any excess water and roughly chop. Roughly chop the tomatoes and put into a bowl along with the spinach, feta and eggs. Mix well.\n2. Carefully unroll the filo pastry. Cover with some damp sheets of kitchen paper to stop it drying out. Take a sheet of pastry and brush liberally with some of the sundried tomato oil. Drape oil-side down in a 22cm loosebottomed cake tin so that some of the pastry hangs over the side. Brush oil on another piece of pastry and place in the tin, just a little further round. Keep placing the pastry pieces in the tin until you have roughly three layers, then spoon over the filling. Pull the sides into the middle, scrunch up and make sure the filling is covered. Brush with a little more oil.\n3. Heat oven to 180C/fan 160C/gas 4. Cook the pie for 30 mins until the pastry is crisp and golden brown. Remove from the cake tin, slice into wedges and serve with salad.'
)

mayak_avocado = Recipe.create(
  name: 'Mayak Avocado',
  cook_time: 20,
  servings: 4,
  cuisine: 'Korean',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Mayak-Avocado/i-DhXXCbB/0/5353428c/X3/840A9833-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Mayak Avocado, Korean Marinated Avocado Recipe! This simple,\neasy & quick avocado recipe will change your life!',
  instructions: '1. Combine chopped garlic, chili, green onion, lemon juice, soy sauce, water, agave nectar, black pepper, and sesame seeds in a large airtight container. Give a good mix.\n2. Cut firm avocado lengthwise around the seed. Open and remove pits from avocados. Cut them into quarters, and carefully peel. Cut avocados into large chunks and add into marinate sauce. Add your choice of diced cucumber or cherry tomatoes.\n3. Carefully cover avocado chunks with marinating, be gentle because avocados are easy to break down. You can serve immediately or cover and marinate for 30 minutes before serving. You can serve by itself as a snack/appetizer, pair with crackers, make avocado toast or serve with warm cooked rice. Enjoy!'
)

vegetarian_yaki = Recipe.create(
  name: 'Vegetarian Yaki Udon',
  cook_time: 15,
  servings: 2,
  cuisine: 'Asian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/yaki-udon-19d4efb.jpg?quality=90&webp=true&resize=300,272',
  description: 'Pack in the veg with our flavour-packed Japanese-inspired yaki udon.',
  instructions: '1. Heat the oil in a non-stick frying pan or wok over a high heat. Add the onion and fry for 5 mins. Stir in the mangetout, corn, pak choi and spring onions and cook for 5 mins more. Add the garlic, curry powder and soy sauce, and cook for another minute.\n2. Add the udon noodles along with the ginger and reserved brine, and stir in 2-3 tbsp hot water until the noodles are heated through. Divide between bowls and serve.'
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
  name: 'Tofu Poke Bowl',
  cook_time: 15,
  servings: 4,
  cuisine: 'Hawaiian',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Tofu-Poke/i-ZwhXLn6/0/c30ac9da/X3/840A9418-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Healthy Poke with Tofu!',
  instructions: '1. Place sliced onions into ice water and let it sit for 5 to 10 minutes. This way we can reduce pungent raw onion flavor and it will give a refreshing crunch bite.\n2. Combine soy sauce, sesame oil, salt, sesame seeds, red pepper flakes, and msg in a mixing bowl. \n3. Drain onion and tap dry on a paper towel. Add tofu, onion, and sea asparagus into a mixing bowl and give it a toss. Transfer to an air-tight container and place in a refrigerator at least overnight before serving. This poke will last 7 days in a refrigerator. Enjoy with warm cooked rice! '
)

vegetarian_enchiladas = Recipe.create(
  name: 'Vegetarian Enchiladas',
  cook_time: 30,
  servings: 4,
  cuisine: 'Vegetarian',
  image_url: 'https://tastesbetterfromscratch.com/wp-content/uploads/2016/01/Vegetarian-Enchiladas-4.jpg',
  description: 'Healthy Vegetarian Enchiladas!',
  instructions: '1. Heat the oil in a large frying pan. Cook the onions and carrots for 5-8 mins until soft – add a splash of water if they start to stick. Sprinkle in the chilli powder and cook for 1 min more. Pour in the tomatoes and pulses and bring to the boil. Turn down the heat and simmer for 5-10 mins, stirring occasionally, until thickened. Remove from the heat and season well.\n2. Heat grill to high. Spread a spoonful of the bean chilli over a large ovenproof dish. Lay each tortilla onto a board, fill with a few tbsp of chilli mixture, fold over the ends and roll up to seal. Place them into the ovenproof dish. Spoon the remaining chilli on top.\n3. Mix the yogurt and grated cheese together with some seasoning, and spoon over the enchiladas. Grill for a few mins until the top is golden and bubbling. Serve with a green salad.'
)
puts 'Recipes finished'

puts 'Creating recipe_ingridients'
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: olive_oil.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: eggs.id,
  quantity: 6,
  unit: 'medium'
)
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: green_onion.id,
  quantity: 1,
  unit: 'bunch'
)
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: cheddar.id,
  quantity: 55,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: broccoli.id,
  quantity: 300,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: courgette.id,
  quantity: 1,
  unit: 'large'
)
RecipeIngredient.create(
  recipe_id: quiche_traybake.id,
  ingredient_id: filo.id,
  quantity: 250,
  unit: 'g'
)

puts 'Creating recipe_ingridients'

RecipeIngredient.create(
  recipe_id: greek_pie.id,
  ingredient_id: spinach.id,
  quantity: 200,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: greek_pie.id,
  ingredient_id: sundried_tomato.id,
  quantity: 175,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: greek_pie.id,
  ingredient_id: feta.id,
  quantity: 100,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: greek_pie.id,
  ingredient_id: eggs.id,
  quantity: 2,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: greek_pie.id,
  ingredient_id: filo.id,
  quantity: 125,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: olive_oil.id,
  quantity: 1,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: chorizo.id,
  quantity: 200,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: arborio.id,
  quantity: 300,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: vinegar.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: chicken_stock.id,
  quantity: 1.2,
  unit: 'l'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: peas.id,
  quantity: 200,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: chorizo_risotto.id,
  ingredient_id: parmesan.id,
  quantity: 60,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: dressed_beans.id,
  ingredient_id: green_beans.id,
  quantity: 1.2,
  unit: 'kg'
)
RecipeIngredient.create(
  recipe_id: dressed_beans.id,
  ingredient_id: garlic.id,
  quantity: 2,
  unit: 'cloves'
)
RecipeIngredient.create(
  recipe_id: dressed_beans.id,
  ingredient_id: olive_oil.id,
  quantity: 2,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: dressed_beans.id,
  ingredient_id: red_wine_vinegar.id,
  quantity: 2,
  unit: 'tbsp'
)

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
  ingredient_id: cucumber.id,
  quantity: 3,
  unit: 'oz'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: sesame_oil.id,
  quantity: 1,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: red_onion.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: mangetout.id,
  quantity: 160,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: baby_corn.id,
  quantity: 70,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: pak_choi.id,
  quantity: 2,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: spring_onion.id,
  quantity: 3,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: garlic.id,
  quantity: 1,
  unit: 'clove'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: curry.id,
  quantity: 1/2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: soy.id,
  quantity: 4,
  unit: 'tsp'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: udon.id,
  quantity: 300,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vegetarian_yaki.id,
  ingredient_id: sushi_ginger.id,
  quantity: 1,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: olive_oil.id,
  quantity: 1,
  unit: 'tsp'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: onion.id,
  quantity: 2,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: carrot.id,
  quantity: 280,
  unit: 'g'
)


RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: chilli_powder.id,
  quantity: 2,
  unit: 'tsp'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: canned_tomatoes.id,
  quantity: 2,
  unit: 'cans'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: pulses.id,
  quantity: 2,
  unit: 'cans'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: tortilla.id,
  quantity: 6,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: yogurt.id,
  quantity: 200,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vegetarian_enchiladas.id,
  ingredient_id: cheddar.id,
  quantity: 50,
  unit: 'g'
)

puts 'Finished recipe_ingridients'


# puts 'faker seed'
# 30.times do
#   name = Faker::Food.dish
#   name_file = name.split.join('_')
#   file = URI.open("https://loremflickr.com/320/240/#{name_file}")
#   cuisine, = Faker::Food.ethnic_category.split
#   recipe = Recipe.create(
#     name: name,
#     cook_time: [10, 15, 20, 25, 30, 40, 45].sample,
#     servings: rand(2..6),
#     cuisine: cuisine,
#     image_url: file.base_uri,
#     description: Faker::Food.description,
#     instructions: '1. Cut\n2. Cook\n3. Eat'
#   )
#   4.times do
#     ingredient = Ingredient.create(name: Faker::Food.ingredient.downcase)
#     RecipeIngredient.create(
#       recipe_id: recipe.id,
#       ingredient_id: ingredient.id,
#       quantity: [0.5, 1, 2, 3].sample,
#       unit: ['cup', 'tsp', 'tbsp', 'ml', 'gr'].sample
#     )
#   end
#   3.times do
#     ingredient = Ingredient.create(name: Faker::Food.vegetables)
#     RecipeIngredient.create(
#       recipe_id: recipe.id,
#       ingredient_id: ingredient.id,
#       quantity: [0.5, 1, 2, 3].sample,
#       unit: ['cup', 'tsp', 'tbsp', 'ml', 'gr'].sample
#     )
#   end
# end
puts 'Finished seeding'
