import 'package:flutter/material.dart';
import 'dart:developer';

void main() => runApp(MyApp());

List<List<String>> buttons = [
  ['Clear', '/'],
  ['7', '8', '9', '*'],
  ['4', '5', '6', '-'],
  ['1', '2', '3', '+'],
  ['0', '='],
];

class Recipe {
  String recipeName,
      recipeAuthor,
      amountOfIngredients,
      recipeDifficulty,
      cookingTime,
      imageUrl,
      description;

  bool isFavourite;
  int totalLikes, cookTime;
  List<String> ingredients, directions;

  Recipe(
      {required this.recipeName,
      required this.recipeAuthor,
      required this.amountOfIngredients,
      required this.recipeDifficulty,
      required this.cookingTime,
      required this.totalLikes,
      required this.imageUrl,
      required this.isFavourite,
      required this.description,
      required this.ingredients,
      required this.directions,
      required this.cookTime}) {
    //this is a comment
  }
}

List<Recipe> temp_recipe_list = [
  Recipe(
    recipeName: 'Pasta',
    recipeAuthor: 'Person',
    amountOfIngredients: "cheap",
    recipeDifficulty: "easy",
    cookingTime: "fast",
    totalLikes: 1500,
    imageUrl:
        "https://bakerbynature.com/wp-content/uploads/2013/12/IMG_5986-2-500x500.jpg",
    isFavourite: false,
    description:
        "This recipe will teach you how to make pasta yourself, using store bought noodles and jarred sauce!",
    ingredients: [
      "Noodles",
      "Sauce",
      "Water",
      "Salt",
    ],
    directions: [
      "Gather all your ingredients",
      "Start boiling water.",
      "Put noodles in boiled water",
      "Heat up sauce",
      "Eat",
    ],
    cookTime: 10,
  ),
  Recipe(
    recipeName: 'Burger',
    recipeAuthor: 'Person',
    amountOfIngredients: "decent",
    recipeDifficulty: "easy",
    cookingTime: "fast",
    totalLikes: 100,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5T_ci0qd8mINTkG7Xaj5kRTFFerN3zG0xuw&usqp=CAU",
    isFavourite: false,
    ingredients: [
      "Ground Beef Patties",
      "Buns",
      "Lettuce",
      "Tomatoes",
      "Cheese",
    ],
    directions: [
      "Turn the oven on and put a pan on",
      "Put the burgers on the pan",
      "Cook the burgers on each side for 4-5 mins",
      "Eat",
    ],
    description:
        "This recipe will teach you how to make burger using store bought patties!",
    cookTime: 10,
  ),
  Recipe(
    recipeName: 'Caesar Salad',
    recipeAuthor: 'Person',
    amountOfIngredients: "cheap",
    recipeDifficulty: "easy",
    cookingTime: "fast",
    totalLikes: 100,
    imageUrl:
        "https://bellyfull.net/wp-content/uploads/2021/07/Caesar-Salad-blog-2-500x500.jpg",
    isFavourite: false,
    ingredients: [
      "Lettuce",
      "Croutons",
      "Caesar Dressing",
      "Parmesan Cheese",
    ],
    directions: [
      "Rinse off the lettuce",
      "Put the lettuce in a medium bowl and mix it with the dressing.",
      "Add Croutons and Parmesan Cheese",
      "Done",
    ],
    description:
        "This recipe will teach you how to make pasta yourself, using store bought noodles and jarred sauce!",
    cookTime: 5,
  ),
  Recipe(
    recipeName: 'Beef Wellington',
    recipeAuthor: 'Person',
    amountOfIngredients: "expensive",
    recipeDifficulty: "hard",
    cookingTime: "slow",
    totalLikes: 100,
    imageUrl:
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/beef-wellington-recipe-1631634076.jpg?crop=0.676xw:0.506xh;0.179xw,0.295xh&resize=1200:*",
    isFavourite: false,
    ingredients: [
      "Beef Tenderloin",
      "Salt",
      "Black Pepper",
      "Olive Oil",
      "Dijon Mustard",
      "Mixed Mushrooms",
      "Shallot",
      "Thyme Sprig Leaves",
      "Unsalted Butter",
      "Prosciutto",
      "All-Purpose Flour",
      "Puff Pastry",
      "Egg",
      "Flaky Salt",
    ],
    directions: [
      "Using kitchen twine, tie tenderloin in 4 places. Season generously with salt and pepper.",
      "Over high heat, coat bottom of a heavy skillet with olive oil. Once pan is nearly smoking, sear tenderloin until well-browned on all sides, including the ends, about 2 minutes per side (12 minutes total). Transfer to a plate. When cool enough to handle, snip off twine and coat all sides with mustard. Let cool in fridge.",
      "Meanwhile, make duxelles: In a food processor, pulse mushrooms, shallots, and thyme until finely chopped.",
      "To skillet, add butter and melt over medium heat. Add mushroom mixture and cook until liquid has evaporated, about 25 minutes. Season with salt and pepper, then let cool in fridge.",
      "Place plastic wrap down on a work surface, overlapping so that it’s twice the length and width of the tenderloin. Shingle the prosciutto on the plastic wrap into a rectangle that’s big enough to cover the whole tenderloin. Spread the duxelles evenly and thinly over the prosciutto.",
      "Season tenderloin, then place it at the bottom of the prosciutto. Roll meat into prosciutto-mushroom mixture, using plastic wrap to roll tightly. Tuck ends of prosciutto as you roll, then twist ends of plastic wrap tightly into a log and transfer to fridge to chill (this helps it maintain its shape).",
      "Heat oven to 425°. Lightly flour your work surface, then spread out puff pastry and roll it into a rectangle that will cover the tenderloin (just a little bigger than the prosciutto rectangle you just made!). Remove tenderloin from plastic wrap and place on bottom of puff pastry. Brush the other three edges of the pastry with egg wash, then tightly roll beef into pastry.",
      "Once the log is fully covered in puff pastry, trim any extra pastry, then crimp edges with a fork to seal well. Wrap roll in plastic wrap to get a really tight cylinder, then chill for 20 minutes.",
      "Remove plastic wrap, then transfer roll to a foil-lined baking sheet. Brush with egg wash and sprinkle with flaky salt.",
      "Bake until pastry is golden and the center registers 120°F for medium-rare, about 40 to 45 minutes. Let rest 10 minutes before carving and serving.",
    ],
    description: "This recipe will teach you how to make beef wellington!",
    cookTime: 150,
  ),
  Recipe(
    recipeName: 'Turkey',
    recipeAuthor: 'Person',
    amountOfIngredients: "expensive",
    recipeDifficulty: "medium",
    cookingTime: "slow",
    totalLikes: 100,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuWGPfVMQGj5-5xaQKzPKq5nq8YfxYBKyT_Q&usqp=CAU",
    isFavourite: true,
    ingredients: [
      "Unsalted Butter",
      "Lemon",
      "Thyme Leaves",
      "Fresh Turkey",
      "Salt",
      "Black Pepper",
      "Thyme",
      "Spanish Onion",
      "Head Garlic",
    ],
    directions: [
      "Preheat the oven to 350 degrees F.",
      "Melt the butter in a small saucepan. Add the zest and juice of the lemon and 1 teaspoon of thyme leaves to the butter mixture. Set aside.",
      "Take the giblets out of the turkey and wash the turkey inside and out. Remove any excess fat and leftover pinfeathers and pat the outside dry. Place the turkey in a large roasting pan. Liberally salt and pepper the inside of the turkey cavity. Stuff the cavity with the bunch of thyme, halved lemon, quartered onion, and the garlic. Brush the outside of the turkey with the butter mixture and sprinkle with salt and pepper. Tie the legs together with string and tuck the wing tips under the body of the turkey.",
      "Roast the turkey about 2 1/2 hours, or until the juices run clear when you cut between the leg and the thigh. Remove the turkey to a cutting board and cover with aluminum foil; let rest for 20 minutes.",
      "Slice the turkey and serve."
    ],
    description: "This recipe will teach you how to make a Roasted Turkey!",
    cookTime: 200,
  ),
  Recipe(
    recipeName: 'Apple Pie',
    recipeAuthor: 'Person',
    amountOfIngredients: "cheap",
    recipeDifficulty: "medium",
    cookingTime: "moderate",
    totalLikes: 100,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWBae6o3LV40BxPryhtDrCYvtNekTt9AKBlg&usqp=CAU",
    isFavourite: true,
    ingredients: [
      "All Purpose Flour",
      "Sugar",
      "Salt",
      "Unsalted Butter",
      "Apple Cider Vinegar",
      "Ice Water",
      "Light Brown Sugar",
      "Ground Cinnamon",
      "Mixed Apples",
      "Lemon Juice",
    ],
    directions: [
      "Make the crust: Whisk the flour, granulated sugar and salt in a large bowl. Rub the butter pieces into the flour using your fingers until pea-size pieces form. Drizzle in the vinegar and ice water; stir gently with a fork to combine. If the dough doesn’t hold together when you squeeze it, add more ice water, 1 tablespoon at a time. Turn out the dough onto a piece of plastic wrap and form into a disk; wrap tightly. Refrigerate until firm, at least 1 hour or overnight.",
      "Roll out the dough on a lightly floured surface into a 13-inch round. Ease into a 9-inch pie plate. Trim the edges, leaving a 1-inch overhang, then tuck the overhanging dough under itself; crimp the edges with a fork. Refrigerate until firm, at least 1 hour or overnight.",
      "Meanwhile, make the crumb topping: Mix the flour, brown sugar, cinnamon and salt in a medium bowl. Rub the butter into the mixture with your fingers until no longer floury and crumbs form. Freeze until ready to use.",
      "Make the filling: Place a foil-lined baking sheet on the lowest oven rack; preheat to 400˚. Mix the apples, melted butter, both sugars, flour, lemon juice, cinnamon and salt in a large bowl. Spoon the filling into the chilled pie crust. Pat the crumb mixture on top.",
      "Bake the pie on the hot baking sheet until lightly browned, about 30 minutes. Reduce the oven temperature to 350˚ and bake until the apples are completely soft when pierced with a paring knife, 60 to 80 more minutes. (If the topping is getting too dark, cover loosely with foil.) Transfer the pie to a rack to cool completely.",
    ],
    description: "This recipe will teach you how to make an Apple Pie!",
    cookTime: 180,
  ),
  Recipe(
    recipeName: 'Pizza',
    recipeAuthor: 'Person',
    amountOfIngredients: "cheap",
    recipeDifficulty: "easy",
    cookingTime: "fast",
    totalLikes: 100,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0pTZRegw_OcN59vrerdbD8tjHP5O3O5jkAg&usqp=CAU",
    isFavourite: false,
    ingredients: [
      "Premade Pizza Crust",
      "Sauce",
      "Cheese",
    ],
    directions: [
      "Preheat oven",
      "Shred cheese",
      "Put pizza crust on a baking sheet, then add sauce on top",
      "Put cheese on top on pizza",
      "Put pizza in oven 10 mins",
    ],
    description: "This recipe will teach you how to make pizza yourself!",
    cookTime: 15,
  ),
  Recipe(
    recipeName: "Beef Stew",
    recipeAuthor: 'Person',
    amountOfIngredients: "decent",
    recipeDifficulty: "easy",
    cookingTime: "slow",
    totalLikes: 20,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZSLCzazSTjnSAPCmk5B-aIroiDmx7aVCxlQ&usqp=CAU",
    isFavourite: false,
    ingredients: [
      "Vegetable Oil",
      "Boneless Beff Chuck Roast",
      "All Purpose Flour",
      "Black Pepper",
      "Salt",
      "Tomato Paste",
      "Dry Red Wine",
      "Carrots",
      "Celery Ribs",
      "Sprig Fresh Thyme",
      "Pearl Onions",
    ],
    directions: [
      "Add the oil to the Instant Pot and set to saute",
      "Meanwhile, toss the beef with the flour, 2 teaspoons salt, and a generous amount of pepper in a medium bowl. Add the meat and all the flour to the Instant Pot in a single layer and cook, undisturbed, until golden brown on the bottom, about 3 minutes. Stir once and allow to brown for another 2 to 3 minutes. Add the tomato paste and stir to coat. Add the wine and bring to a boil. Cook for 1 minute, scraping up browned bits from the bottom of the pot with a wooden spoon.",
      "Add the carrots, celery, thyme and onions and stir to coat. Follow the manufacturer's guide for locking the lid and set to pressure cook on high for 40 minutes. After the pressure cycle is complete follow the manufacturer's guide for quick release and wait until the quick release cycle is complete. Careful of any remaining steam, unlock and remove the lid. ",
    ],
    description:
        "This recipe will teach you how to make pasta yourself, using store bought noodles and jarred sauce!",
    cookTime: 85,
  ),
  Recipe(
    recipeName: "Chicken Pot Pie",
    recipeAuthor: 'Person',
    amountOfIngredients: "cheap",
    recipeDifficulty: "medium",
    cookingTime: "moderate",
    totalLikes: 100,
    imageUrl:
        "https://images-gmi-pmc.edge-generalmills.com/27369a93-71b4-4dad-96dd-9656d63f146b.jpg",
    isFavourite: false,
    ingredients: [
      "Chicken Tenders",
      "Sweet Paprika",
      "Dried Sage",
      "Dried Oregano",
      "Black Pepper",
      "Olive Oil",
      "Pearl Onions",
      "Peas",
      "Carrots",
      "Garlic",
      "All Purpose Flour",
      "Chicken Stock",
      "Heavy Cream",
      "Store Bought Pie Crust",
      "Egg",
    ],
    directions: [
      "Preheat the oven to 400 degrees F.",
      "Sprinkle the chicken tenders with paprika, sage, oregano, salt and pepper. Heat a 10-inch cast-iron pan over medium-high heat and add the olive oil. When the oil begins to swirl, add the seasoned chicken and saute until cooked through, about 4 minutes on the first side and 3 minutes on the second side. Remove the chicken to a plate with tongs, leaving the oil in the pan. Rest the chicken for a few minutes, and then chop into 1/2-inch cubes.",
      "To the same pan, add the onions and peas and carrots and sprinkle with salt and pepper. Stir and cook until the onions become tender, 3 to 5 minutes. Add the garlic and cook until fragrant, about 1 minute longer. Sprinkle in the flour and stir until the flour dissolves into the vegetables and juices. Add the chicken stock and raise to a simmer, stirring until thickened. Once the liquid has thickened, stir in the heavy cream. Season with salt, if needed.",
      "Return the chicken to the pan. Unfold the pie crust and place over the top of the filling, tucking the excess edges inside the pan. Brush the crust evenly with the egg wash. Using a knife, gently cut 3 vents in the top of the crust. Place in the oven and bake until the crust is golden brown, about 20 minutes.",
    ],
    description: "This recipe will teach you how to make Chicken Pot Pie!",
    cookTime: 40,
  ),
];

String displayEquation = '';

List<List<Color>> colorsForButtons = [
  [Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue],
];

List<List<double>> sizes = [
  [3.3, 1],
  [1, 1, 1, 1],
  [1, 1, 1, 1],
  [1, 1, 1, 1],
  [1, 3.3],
];

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyState();
}

Widget iconsForFood(int number) {
  Recipe curRecipe = temp_recipe_list[number];
  return Stack(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(curRecipe.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    curRecipe.recipeAuthor,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite,
                    color: curRecipe.isFavourite ? Colors.red : Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        curRecipe.recipeName,
                        style: const TextStyle(
                            fontSize: 24.0, color: Colors.white),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Icon(Icons.access_time, color: Colors.white),
                        Text(
                          (curRecipe.cookTime).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Icon(Icons.monetization_on, color: Colors.white),
                        Text(
                          (curRecipe.ingredients.length).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Icon(Icons.help, color: Colors.white),
                        Text(
                          curRecipe.recipeDifficulty,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

class _BodyState extends State<BodyWidget> {
  evaluate() {
    log(displayEquation);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        for (int i = 0; i < temp_recipe_list.length - 1; i++) iconsForFood(i),
      ],
    );
  }
}

//All code is called from here
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

//this builds the material App
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Lab five part B'),
            backgroundColor: const Color.fromARGB(255, 156, 232, 94),
            titleTextStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 22)),
        body: BodyWidget(),
      ),
    );
  }
}
