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
asparagus = Ingredient.create(name: 'asparagus')
baby_corn = Ingredient.create(name: 'baby corn')
basil = Ingredient.create(name: 'basil')
black_pepper = Ingredient.create(name: 'black pepper')
broccoli = Ingredient.create(name: 'broccoli')
butter = Ingredient.create(name: 'butter')
butter_beans = Ingredient.create(name: 'butter beans')
bread = Ingredient.create(name: 'bread')
carrot = Ingredient.create(name: 'carrot')
canned_tomatoes = Ingredient.create(name: 'canned tomatoes')
cheddar = Ingredient.create(name: 'cheddar')
chickpea = Ingredient.create(name: 'chickpea')
chicken_stock = Ingredient.create(name: 'chicken stock')
chicken_thighs = Ingredient.create(name: 'chicken thighs')
coconut_rice = Ingredient.create(name: 'coconut rice')
cucumber = Ingredient.create(name: 'cucumber')
curry = Ingredient.create(name: 'curry powder')
courgette = Ingredient.create(name: 'courgette')
chili_oil = Ingredient.create(name: 'chili oil')
chilli_powder = Ingredient.create(name: 'chilli powder')
chilli_flake = Ingredient.create(name: 'chilli flake')
chive = Ingredient.create(name: 'chive')
chorizo = Ingredient.create(name: 'chorizo')
creme_fraiche = Ingredient.create(name: 'creme fraiche')
dijon = Ingredient.create(name: 'dijon mustard')
double_cream = Ingredient.create(name: 'double cream')
eggs = Ingredient.create(name: 'eggs')
feta = Ingredient.create(name: 'feta cheese')
filo = Ingredient.create(name: 'filo pastry')
garlic = Ingredient.create(name: 'garlic')
greens = Ingredient.create(name: 'greens')
green_beans = Ingredient.create(name: 'green beans')
honey = Ingredient.create(name: 'honey')
red_wine_vinegar = Ingredient.create(name: 'red wine vinegar')
roasted_red_pepper = Ingredient.create(name: 'roasted red pepper')
shallot = Ingredient.create(name: 'shallot')
green_onion = Ingredient.create(name: 'green onion')
kale = Ingredient.create(name: 'kale')
lemon = Ingredient.create(name: 'lemon juice')
mangetout = Ingredient.create(name: 'mangetout')
mascarpone = Ingredient.create(name: 'mascarpone')
olive_oil = Ingredient.create(name: 'olive oil')
onion = Ingredient.create(name: 'onion')
orzo = Ingredient.create(name: 'orzo pasta')
pak_choi = Ingredient.create(name: 'pak choi')
parmesan = Ingredient.create(name: 'parmesan')
paneer = Ingredient.create(name: 'paneer')
pepper_flakes = Ingredient.create(name: 'red pepper flakes')
peas = Ingredient.create(name: 'frozen peas')
pine_nut = Ingredient.create(name: 'pine nut')
prawn = Ingredient.create(name: 'prawn')
pulses = Ingredient.create(name: 'pulses')
pumpkin_seed = Ingredient.create(name: 'pumbkin seed')
red_onion = Ingredient.create(name: 'red onion')
red_chilli = Ingredient.create(name: 'red chilli')
salmon = Ingredient.create(name: 'salmon')
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
pasta = Ingredient.create(name: 'pasta')
pork_sausages = Ingredient.create(name: 'pork and herb sausage')
ricotta = Ingredient.create(name: 'ricotta')
radish = Ingredient.create(name: 'radishes')
tortilla = Ingredient.create(name: 'tortilla')
tofu = Ingredient.create(name: 'fried tofu')
tomato = Ingredient.create(name: 'tomatoes')
tomato_puree = Ingredient.create(name: 'tomato puree')
udon = Ingredient.create(name: 'udon noodles')
vegetable_stock = Ingredient.create(name: 'vegetable stock')
vinegar = Ingredient.create(name: 'vinegar')
vodka = Ingredient.create(name: 'vodka')
water = Ingredient.create(name: 'water')
walnut = Ingredient.create(name: 'walnut')
yogurt = Ingredient.create(name: 'yogurt')
# zucchini = Ingredient.create(name: 'zucchini')


puts 'Ingridients finished'

#  = Recipe.create(
#   name: '',
#   cook_time: ,
#   servings: ,
#   cuisine: '',
#   image_url: '',
#   description: '',
#   instructions: ''
# )

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

greek_pie = Recipe.create(
  name: 'Greek Style Pie',
  cook_time: 40,
  servings: 4,
  cuisine: 'Vegetarian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-491503_12-f496108.jpg?quality=90&webp=true&resize=300,272',
  description: 'A good fail-safe for your repertoire',
  instructions: '1. Put the spinach into a large pan. Pour over a couple tbsp water, then cook until just wilted. Tip into a sieve, leave to cool a little, then squeeze out any excess water and roughly chop. Roughly chop the tomatoes and put into a bowl along with the spinach, feta and eggs. Mix well.\n2. Carefully unroll the filo pastry. Cover with some damp sheets of kitchen paper to stop it drying out. Take a sheet of pastry and brush liberally with some of the sundried tomato oil. Drape oil-side down in a 22cm loosebottomed cake tin so that some of the pastry hangs over the side. Brush oil on another piece of pastry and place in the tin, just a little further round. Keep placing the pastry pieces in the tin until you have roughly three layers, then spoon over the filling. Pull the sides into the middle, scrunch up and make sure the filling is covered. Brush with a little more oil.\n3. Heat oven to 180C/fan 160C/gas 4. Cook the pie for 30 mins until the pastry is crisp and golden brown. Remove from the cake tin, slice into wedges and serve with salad.'
)

saag = Recipe.create(
  name: 'Saag paneer kedgeree',
  cook_time: 15,
  servings: 2,
  cuisine: 'South-Asian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/saag-paneer-kedgeree-86c48c0.jpg?quality=90&webp=true&resize=300,272',
  description: 'Combine two Indian-inspired classics in this paneer and kedgeree mash-up.',
  instructions: '1. Bring a medium pan of water to the boil. Add the eggs and cook for 7 mins, then put them in a bowl of cold water and set aside.\n2. Meanwhile, drizzle the oil in a large non-stick frying pan or shallow casserole dish. Add the onion and fry over a medium-high heat for 5 mins. Tip in the paneer and fry for 5 mins or until evenly browned and the onion is beginning to caramelise.\n3. Add the curry powder and fry for 1 min, then add the spinach. Cover with a lid and cook for a few mins to allow the spinach to defrost. Uncover, add the rice, turn up the heat and cook for a few mins more or until everything is piping hot. Season. Peel the eggs, halve and place on top of the rice. Finish with a scattering of chilli, if you like.'
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

 red_linguine = Recipe.create(
  name: 'Red pepper linguine',
  cook_time: 20,
  servings: 1,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/red-pepper-linguine-b431cde.jpg?quality=90&webp=true&resize=440,400',
  description: 'This fast, fresh pasta sauce with cherry tomatoes, prawns and crème fraîche is ideal for a midweek supper, and it\'s low-fat.',
  instructions: '1. Heat the oil in a large pan, add the garlic and sizzle for a few mins, then add the courgettes and cook for a few mins more until starting to soften. Cook the pasta following pack instructions.\n2. Add the tomatoes, sugar and seasoning to the pan, stir and simmer, uncovered, for about 10 mins while the pasta cooks.\n3. Add the prawns to the sauce and bubble until they just turn pink. Drain the pasta and add to the sauce with the crème fraîche. Simmer for another 1-2 mins, then add the basil and serve.'
)

courgette_pasta = Recipe.create(
  name: 'Courgette & prawn pasta',
  cook_time: 35,
  servings: 4,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/pasta_3-d8664d4.jpg?quality=90&webp=true&resize=440,400',
  description: 'Use just a few ingredients to create this no-fuss slow-cooker chicken thigh dish with a creamy honey and mustard sauce.',
  instructions: '1. Heat the slow cooker. Melt the butter in a frying pan and quickly brown the chicken thighs all over. Make sure the skin picks up plenty of colour. Season, then put them in the slow cooker. Brown the spring onions and add them to the slow cooker as well. Add the stock, mustard and honey and cook on low for 4 hrs.\n2. Stir in the cream or crème fraîche and peas, then cook for a further 15 mins with the lid off. Re-crisp up the chicken skin under the grill, if you like.'
)

honey_mustard_thighs = Recipe.create(
  name: 'Honey mustard chicken thighs',
  cook_time: 240,
  servings: 4,
  cuisine: 'Seasonal',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/honey-mustard-chicken-f111be8.jpg?quality=90&webp=true&resize=300,272',
  description: 'Use just a few ingredients to create this no-fuss slow-cooker chicken thigh dish with a creamy honey and mustard sauce.',
  instructions: '1. Heat the slow cooker. Melt the butter in a frying pan and quickly brown the chicken thighs all over. Make sure the skin picks up plenty of colour. Season, then put them in the slow cooker. Brown the spring onions and add them to the slow cooker as well. Add the stock, mustard and honey and cook on low for 4 hrs.\n2. Stir in the cream or crème fraîche and peas, then cook for a further 15 mins with the lid off. Re-crisp up the chicken skin under the grill, if you like.'
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

ricotta_pasta = Recipe.create(
  name: 'Courgette & ricotta pasta',
  cook_time: 25,
  servings: 4,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-981481_11-f4ebdab.jpg?quality=90&webp=true&resize=440,400',
  description: 'Soft Italian cheeses like ricotta make a great sauce base when mixed with lemon, greens, herbs and pine nuts',
  instructions: '1. Heat the oil in a large frying pan. Cook the shallot and courgettes for 8 mins until softened. When they are just beginning to colour, add the garlic and cook for 2 mins more.\n2. Cook the pasta following pack instructions. Drain, reserving a little of the water. Tip the pasta into the courgette pan with the basil, lemon zest, Parmesan and pine nuts. Season, dot over the ricotta and mix gently so that you don’t break it up too much. Serve sprinkled with extra Parmesan, if you like.'
)

 vodka_pasta = Recipe.create(
  name: 'Pasta alla vodka',
  cook_time: 25,
  servings: 2,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg?quality=90&webp=true&resize=300,272',
  description: 'Sit back and tuck into a big bowl of pasta alla vodka, a creamy tomato pasta with – as you can guess – vodka, which balances out the intense flavours',
  instructions: '1. Heat the oil in a large frying pan or casserole dish. Add the shallot and a large pinch of salt and gently fry over a low heat for 10 mins or until softened and translucent. Add the garlic and chilli flakes and cook for 30 seconds. Stir through the tomato purée, cook for 2 mins, then stir through the vodka and cook for 3 mins. Quickly stir through the cream to combine, then remove from the heat.\n2. Cook the pasta in salted water following pack instructions. Drain and reserve 150ml cooking water. Add roughly 50ml of the water to the tomato sauce, then tip in the pasta and cheese, tossing everything together over a low heat until well coated and glossy (loosen with a splash more of the cooking water if it’s a little dry). Season to taste, then serve with a sprinkling of the extra parmesan, a good grinding of black pepper and the basil leaves scattered over the top.'
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

courgette_noodles = Recipe.create(
  name: 'Courgette Noodles',
  cook_time: 10,
  servings: 3,
  cuisine: 'Asian',
  image_url: 'https://i1.wp.com/photos.smugmug.com/Zucchini-Noodles/i-gwk2BTV/0/01630733/X3/840A8976-X3.jpg?resize=800%2C1200&ssl=1',
  description: 'Easy Courgette Noodles Recipe!',
  instructions: '1. Bring a large pot of water to a boil, cook somen by following directions of package you’re using. When somen has 1 minute to finish, add zucchini & onion into pot and boil it together.\n2. Drain and rinse under cold water. Drain completely and place in a large mixing bowl. Add soy sauce, nectar, and chili oil then mix well. Garnish with sesame seeds and enjoy!'
)
herby_sausages = Recipe.create(
  name: 'Herby sausages with butten bean mash',
  cook_time: 20,
  servings: 2,
  cuisine: 'Britsh',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/sausages-with-butter-bean-mash-b841f22.jpg?quality=90&webp=true&resize=300,272',
  description: 'Just a few ingredients make up this midweek meal that takes just 10 minutes prep!',
  instructions: '1. Heat grill to high. Brush 1 tbsp oil over the sausages, and grill on a tray for 20 mins, turning regularly.\n2. Meanwhile, heat the rest of the oil in a saucepan over a low heat. Add most of the spring onion and cook for 5 mins until softened. Add the beans, garlic, and lemon zest and juice, cook for a few mins more, then gently mash with a potato masher to get a thick, creamy consistency. Season and cook for 5 mins more until warmed through. Scatter over the remaining spring onion and serve with the sausages and wilted greens.'
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

raw_salad = Recipe.create(
  name: 'Raw spring salad',
  cook_time: 15,
  servings: 4,
  cuisine: 'Seasonal',
  image_url: 'https://img.jamieoliver.com/jamieoliver/recipe-database/5IpZAvgW4pI9RN8dfL09hO.jpg?tr=w-800,h-1066',
  description: 'Super fresh, perfect as a side!',
  instructions: '1. Prepare a large bowl of iced water.\n2. Speed-peel the asparagus, radishes and courgettes into ribbons. Place in the iced water.\n3. Pick and finely chop the mint and dill, and place in a bowl. Squeeze in the juice of the lemon, drizzle over a little oil and season well.\n4. Remove the vegetables from the water and spin until dry. Place in the bowl with the dressing, toss well and serve.'
)

kale_pasta = Recipe.create(
  name: 'Pasta with kale sauce',
  cook_time: 15,
  servings: 4,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/Kale-Pesto-df3faaf.jpg?quality=90&webp=true&resize=300,272',
  description: 'Whizz up with kale, pumpkin seeds and garlic.',
  instructions: '1. Bring a pan of water to the boil. Cook the kale for 30 secs, drain and transfer to a bowl of ice-cold water for 5 mins. Drain again and pat dry with kitchen paper.\n2. Put the basil, garlic, seeds, oil, nutritional yeast, lemon juice and zest, and drained kale in a food processor. Blitz until smooth, then season. Loosen with a splash of water, if it’s too thick.\n3. Cook the pasta following pack instructions, then toss with the pesto and serve.'
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

 salmon_pasta = Recipe.create(
  name: 'Pasta with salmon and peas',
  cook_time: 15,
  servings: 3,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/salmonpasta-11bb3f0.jpg?quality=90&webp=true&resize=300,272',
  description: 'Quick and easy dinner.',
  instructions: '1. Bring a pan of water to the boil and cook the fusilli according to the pack instructions.\n2. Meanwhile, heat a knob of butter in a saucepan, then add the shallot and cook for 5 mins or until softened.\n3. Add the peas, salmon, crème fraîche and 50ml water. Crumble in the stock cube.\n4. Cook for 3-4 mins until cooked through, stir in the chives and some black pepper. Then stir through to coat the pasta. Serve in bowls.'
)

bruschetta = Recipe.create(
  name: 'Tomato bruschetta',
  cook_time: 15,
  servings: 4,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/bruschetta-recipe-1-2448fad.jpg?quality=90&webp=true&resize=300,272',
  description: 'Simple Italian starter.',
  instructions: '1. In a large bowl, mix the onions, tomatoes, garlic and basil, taking care not to mash or break up the tomatoes too much. Add the balsamic vinegar and extra virgin olive oil. Add salt and pepper to taste. Mix again. Cover and chill for at least an hour. This will allow the flavours to soak and blend together.\n2. Slice the baguette loaf diagonally into 12 thick slices and lightly toast them until they are light brown on both sides. Serve the mixture on the warm slices of bread. If you prefer the mixture at room temperature, remove from the fridge half an hour before serving.'
)

orzo_soup = Recipe.create(
  name: 'Orzo and tomato soup',
  cook_time: 30,
  servings: 4,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/tomato-and-orzo-soup-47fe2e7.jpg?quality=90&webp=true&resize=300,272',
  description: 'Simple, budget friendly and seasonal!',
  instructions: '1. Heat 1 tbsp olive oil in a large saucepan. Add the onion and celery and fry for 10-15 mins, or until starting to soften, then add the garlic and cook for 1 min more. Stir in all the other ingredients, except for the pesto and remaining oil, and bring to the boil.\n2. Reduce the heat and leave to simmer for 6-8 mins, or until the orzo is tender. Season to taste, then ladle into bowls.\n3. Stir the remaining oil with the pesto, then drizzle over the soup. Serve with chunks of crusty bread.'
)

summer_pasta = Recipe.create(
  name: 'Lazy summer pasta',
  cook_time: 50,
  servings: 2,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-49148_12-3427f2b.jpg?quality=90&webp=true&resize=440,400',
  description: 'Perfect for those lazy summer evenings, this no-sauce pasta supper could hardly be easier',
  instructions: '1. Preheat the oven to fan 200C/conventional 220C/gas 7. Put the onion, courgettes and garlic into a large ovenproof dish. Slosh over the olive oil, season well and give everything a quick stir, then roast for 15 minutes. Stir in the tomatoes into the veg and continue roasting for 15 minutes more. At the same time, bring a large pan of salted water to the boil so the sauce and pasta will be finished at the same time.\n2. Drop the pasta into the boiling water and cook according to pack instructions; about 9-12 minutes.\n3. Drain the pasta. Take the vegetables out of the oven and pop the garlic cloves out of their skins. Mash the garlic against the side of the dish and stir through the vegetables. Tip in the pasta and toss everything together, tearing in some basil as you go. Pile into two bowls and serve with grated parmesan.'
)

mascarpone_risotto = Recipe.create(
  name: 'Tomato and mascarpone risotto',
  cook_time: 40,
  servings: 2,
  cuisine: 'Italian',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/tomato-mascarpone-risotto-b090efa.jpg?quality=90&webp=true&resize=300,272',
  description: 'Easy and seasonal risotto.',
  instructions: '1. Heat the oil in a large, heavy-based saucepan. Add the onion along with a pinch of salt, and fry for 10 mins or until beginning to soften and turn translucent, then add the garlic and fry for 1 min. Stir in the rice and cook for 2 mins.\n2. Tip in the tomatoes and bring to a simmer. Add half the stock, cooking and stirring until absorbed. Add the remaining stock, a ladleful at a time, and cook until the rice is al dente, stirring constantly for around 20 mins.\n3. Stir through the parmesan, mascarpone and basil, and season to taste. Spoon into bowls to serve.'
)

courgette_linguine = Recipe.create(
  name: 'Lemony courgette linguine',
  cook_time: 15,
  servings: 2,
  cuisine: 'Italian',
  image_url: 'https://img.jamieoliver.com/jamieoliver/recipe-database/55846365.jpg?tr=w-800,h-1066',
  description: 'Fresh and lemony, easy and quick!',
  instructions: '1. Cook the pasta in a pan of boiling salted water according to the packet instructions, then drain, reserving a mugful of cooking water. Meanwhile, slice the courgettes lengthways, then again into long matchsticks with good knife skills or using the julienne cutter on a mandolin (use the guard!).\n2. Place a large non-stick frying pan on a medium-high heat with 1 tablespoon of olive oil, then add the courgettes.
Cook for 4 minutes, tossing regularly, while you finely slice the mint leaves, then stir them into the pan. Toss the drained pasta into the courgette pan with a splash of reserved cooking water.\n3. Finely grate in most of the Parmesan and a little lemon zest, squeeze in all the juice, toss well, then taste and season to perfection with sea salt and black pepper.\n4. Dish up, finely grate over the remaining Parmesan and drizzle with 1 teaspoon of extra virgin olive oil before tucking in.'
)
puts 'Recipes finished'

puts 'Creating recipe_ingridients'
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: asparagus.id,
  quantity: 1,
  unit: 'bunch of'
)
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: radish.id,
  quantity: 1,
  unit: 'bunch of'
)
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: courgette.id,
  quantity: 4,
  unit: 'baby'
)
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: basil.id,
  quantity: 1,
  unit: 'bunch of fresh'
)
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: lemon.id,
  quantity: 1,
  unit: 'juiced'
)
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: olive_oil.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: raw_salad.id,
  ingredient_id: parmesan.id,
  quantity: 30,
  unit: 'g grated'
)

RecipeIngredient.create(
  recipe_id: courgette_linguine.id,
  ingredient_id: olive_oil.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: courgette_linguine.id,
  ingredient_id: pasta.id,
  quantity: 150,
  unit: 'g linguine'
)
RecipeIngredient.create(
  recipe_id: courgette_linguine.id,
  ingredient_id: courgette.id,
  quantity: 2,
  unit: 'mixed-colour'
)
RecipeIngredient.create(
  recipe_id: courgette_linguine.id,
  ingredient_id: basil.id,
  quantity: 15,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: courgette_linguine.id,
  ingredient_id: parmesan.id,
  quantity: 30,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: courgette_linguine.id,
  ingredient_id: lemon.id,
  quantity: 1,
  unit: 'zest'
)

RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: onion.id,
  quantity: 1,
  unit: 'sliced'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: courgette.id,
  quantity: 2,
  unit: 'sliced'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: garlic.id,
  quantity: 3,
  unit: 'cloves of'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: olive_oil.id,
  quantity: 3,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: tomato.id,
  quantity: 250,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: pasta.id,
  quantity: 140,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: basil.id,
  quantity: 1,
  unit: 'handful'
)
RecipeIngredient.create(
  recipe_id: summer_pasta.id,
  ingredient_id: parmesan.id,
  quantity: 50,
  unit: 'g grated'
)

RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: olive_oil.id,
  quantity: 2,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: onion.id,
  quantity: 0.5,
  unit: 'finely chopped'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: courgette.id,
  quantity: 4,
  unit: 'halved and thinly sliced'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: garlic.id,
  quantity: 3,
  unit: 'finely chopped cloves of'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: pasta.id,
  quantity: 300,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: basil.id,
  quantity: 1,
  unit: 'small bunch'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: lemon.id,
  quantity: 1,
  unit: 'zest'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: parmesan.id,
  quantity: 50,
  unit: 'g grated'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: pine_nut.id,
  quantity: 50,
  unit: 'g toasted'
)
RecipeIngredient.create(
  recipe_id: ricotta_pasta.id,
  ingredient_id: ricotta.id,
  quantity: 250,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: olive_oil.id,
  quantity: 1,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: garlic.id,
  quantity: 2,
  unit: 'sliced cloves of'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: courgette.id,
  quantity: 2,
  unit: 'sliced large'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: pasta.id,
  quantity: 400,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: tomato.id,
  quantity: 500,
  unit: 'g chopped'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: sugar.id,
  quantity: 0.25,
  unit: 'tsp'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: basil.id,
  quantity: 1,
  unit: 'small bunch'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: prawn.id,
  quantity: 200,
  unit: 'g raw'
)
RecipeIngredient.create(
  recipe_id: courgette_pasta.id,
  ingredient_id: creme_fraiche.id,
  quantity: 100,
  unit: 'g'
)

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
  recipe_id: red_linguine.id,
  ingredient_id: roasted_red_pepper.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: red_linguine.id,
  ingredient_id: walnut.id,
  quantity: 50,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: red_linguine.id,
  ingredient_id: olive_oil.id,
  quantity: 30,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: red_linguine.id,
  ingredient_id: garlic.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: red_linguine.id,
  ingredient_id: pasta.id,
  quantity: 100,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: red_linguine.id,
  ingredient_id: parmesan.id,
  quantity: 80,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: butter.id,
  quantity: 1,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: chicken_thighs.id,
  quantity: 8,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: spring_onion.id,
  quantity: 8,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: chicken_stock.id,
  quantity: 150,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: dijon.id,
  quantity: 1,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: honey.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: double_cream.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: honey_mustard_thighs.id,
  ingredient_id: peas.id,
  quantity: 100,
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
 8.times do
    ingredient = Ingredient.create(name: Faker::Food.ingredient.downcase)
    RecipeIngredient.create(
      recipe_id: saag.id,
      ingredient_id: ingredient.id,
      quantity: [0.5, 1, 2, 3].sample,
      unit: ['cup', 'tsp', 'tbsp', 'ml', 'gr'].sample
    )
  end

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
  recipe_id: herby_sausages.id,
  ingredient_id: olive_oil.id,
  quantity: 3,
  unit: 'tbsps'
)

RecipeIngredient.create(
  recipe_id: herby_sausages.id,
  ingredient_id: pork_sausages.id,
  quantity: 4,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: herby_sausages.id,
  ingredient_id: spring_onion.id,
  quantity: 8,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: herby_sausages.id,
  ingredient_id: butter_beans.id,
  quantity: 800,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: herby_sausages.id,
  ingredient_id: garlic.id,
  quantity: 1,
  unit: 'clove'
)

RecipeIngredient.create(
  recipe_id: herby_sausages.id,
  ingredient_id: lemon.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: herby_sausages.id,
  ingredient_id: greens.id,
  quantity: 300,
  unit: 'g'
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
  recipe_id: courgette_noodles.id,
  ingredient_id: courgette.id,
  quantity: 1,
  unit: 'sliced'
)
RecipeIngredient.create(
  recipe_id: courgette_noodles.id,
  ingredient_id: somen.id,
  quantity: 3,
  unit: 'units'
)
RecipeIngredient.create(
  recipe_id: courgette_noodles.id,
  ingredient_id: onion.id,
  quantity: 0.5,
  unit: 'sliced'
)
RecipeIngredient.create(
  recipe_id: courgette_noodles.id,
  ingredient_id: soy.id,
  quantity: 4,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: courgette_noodles.id,
  ingredient_id: sugar.id,
  quantity: 2,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: courgette_noodles.id,
  ingredient_id: chili_oil.id,
  quantity: 3,
  unit: 'tbsp'
)
RecipeIngredient.create(
  recipe_id: courgette_noodles.id,
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
  recipe_id: vodka_pasta.id,
  ingredient_id: olive_oil.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: shallot.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: garlic.id,
  quantity: 3,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: chilli_flake.id,
  quantity: 1/4,
  unit: 'tsp'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: tomato_puree.id,
  quantity: 100,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: vodka.id,
  quantity: 5,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: double_cream.id,
  quantity: 100,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: pasta.id,
  quantity: 200,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: parmesan.id,
  quantity: 30,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: vodka_pasta.id,
  ingredient_id: basil.id,
  quantity: 40,
  unit: 'g'
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
  recipe_id: kale_pasta.id,
  ingredient_id: kale.id,
  quantity: 150,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: basil.id,
  quantity: 50,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: garlic.id,
  quantity: 1,
  unit: 'clove'
)
RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: courgette.id,
  quantity: 1,
  unit: 'grated'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: pumpkin_seed.id,
  quantity: 3,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: olive_oil.id,
  quantity: 5,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: parmesan.id,
  quantity: 3,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: lemon.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: kale_pasta.id,
  ingredient_id: pasta.id,
  quantity: 350,
  unit: 'g'
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

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: pasta.id,
  quantity: 240,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: olive_oil.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: shallot.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: peas.id,
  quantity: 140,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: salmon.id,
  quantity: 2,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: double_cream.id,
  quantity: 140,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: vegetable_stock.id,
  quantity: 150,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: chive.id,
  quantity: 50,
  unit: 'g'
)
RecipeIngredient.create(
  recipe_id: salmon_pasta.id,
  ingredient_id: parmesan.id,
  quantity: 100,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: onion.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: tomato.id,
  quantity: 8,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: garlic.id,
  quantity: 3,
  unit: 'units'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: basil.id,
  quantity: 30,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: vinegar.id,
  quantity: 30,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: olive_oil.id,
  quantity: 80,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: bruschetta.id,
  ingredient_id: bread.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: olive_oil.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: onion.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: garlic.id,
  quantity: 2,
  unit: 'cloves'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: tomato_puree.id,
  quantity: 1,
  unit: 'tsbp'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: tomato.id,
  quantity: 400,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: chickpea.id,
  quantity: 400,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: orzo.id,
  quantity: 150,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: vegetable_stock.id,
  quantity: 700,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: basil.id,
  quantity: 40,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: orzo_soup.id,
  ingredient_id: bread.id,
  quantity: 1,
  unit: 'unit'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: olive_oil.id,
  quantity: 2,
  unit: 'tbsp'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: onion.id,
  quantity: 1,
  unit: 'unit, finely chopped'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: garlic.id,
  quantity: 1,
  unit: 'clove, crushed'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: arborio.id,
  quantity: 175,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: tomato.id,
  quantity: 400,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: vegetable_stock.id,
  quantity: 600,
  unit: 'ml'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: parmesan.id,
  quantity: 30,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: mascarpone.id,
  quantity: 30,
  unit: 'g'
)

RecipeIngredient.create(
  recipe_id: mascarpone_risotto.id,
  ingredient_id: basil.id,
  quantity: 30,
  unit: 'g'
)
puts 'Finished recipe_ingridients'


# puts 'faker seed'
# 15.times do
#   name = Faker::Food.dish
#   name_file = name.split.join('_')
#   file = URI.open("https://source.unsplash.com/random/1920x1080/?#{name}")
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
