class Menu {
  int id;
  String type;
  String imageAsset;
  String name;
  String description;
  String timeServed;
  String rating;
  String price;
  List<String> imageAssets;

Menu({
  this.id,
  this.type,
  this.imageAsset,
  this.name,
  this.description,
  this.timeServed,
  this.rating,
  this.price,
  this.imageAssets,
});
}

List<Menu> menuList = [
    Menu
    (
      id: 001,
      type: "DRINK",
      imageAsset: "assets/images/lemon_tea_1.jpg",
      name: "Lemon Tea",
      description: "Lemon tea is prepared using black tea or green tea and by adding the right amount of lemon juice to it. When you add lemon juice to your tea, it changes the colour of tea. This effect is known as the bathochromic shift, and it also changes the taste of the tea. This unique taste makes it a wonderful cup of drink.",
      timeServed: "10 mins",
      rating: "3.8",
      price: "Rp 15.000,-",
      imageAssets: [
        "assets/images/lemon_tea_2.jpg",
        "assets/images/lemon_tea_3.jpg",
        "assets/images/lemon_tea_4.jpg"
      ],
    ),
    Menu(
      id: 002, type: "DRINK",
      imageAsset: "assets/images/milkshake_strawberry_1.jpg",
      name: "Unicorn Bark Milkshake",
      description: "A milkshake, or simply shake, is a drink that is traditionally made by blending cow's milk, ice cream, and flavorings or sweeteners such as butterscotch, caramel sauce, chocolate syrup, fruit syrup, or whole fruit into a thick, sweet, cold mixture",
      timeServed: "15 mins",
      rating: "4.0",
      price: "Rp 25.000,-",
      imageAssets: [
        "assets/images/milkshake_strawberry_2.jpg",
        "assets/images/milkshake_strawberry_3.jpg",
        "assets/images/milkshake_strawberry_4.jpg"
      ],
    ),
    Menu(
      id: 003, type: "DRINK",
      imageAsset: "assets/images/orange_mango_smoothies_1.jpg",
      name: "Orange Mango Smoothies",
      description: "The Orange Mango smoothie is actually only made with one flavoring ingredient— orange mango puree. The unsweetened puree (which has a touch of natural sweetness, given its made from fruit,) is the main ingredient of this smoothie with just a splash of 2% milk added along with the banana and protein.",
      timeServed: "15 mins",
      rating: "4.0",
      price: "Rp 35.000,-",
      imageAssets: [
        "assets/images/orange_mango_smoothies_2.jpg",
        "assets/images/orange_mango_smoothies_3.jpg",
        "assets/images/orange_mango_smoothies_4.jpg"
      ],
    ),
    Menu(
      id: 001,
      type: "FOOD",
      imageAsset: "assets/images/aglio_olio_1.jpg",
      name: "Spaghetti Aglio e Olio",
      description: "A typical dish of Neapolitan cuisine. The dish is made by lightly sautéing sliced, minced, or pressed garlic in olive oil, sometimes with the addition of dried red chili flakes (in which case its name is spaghetti aglio, olio e peperoncino), and tossing with spaghetti.",
      timeServed: "30 mins",
      rating: "4.2",
      price: "Rp 45.000,-",
      imageAssets: [
        "assets/images/aglio_olio_2.jpg",
        "assets/images/aglio_olio_3.jpg",
        "assets/images/aglio_olio_4.jpg"
      ],
    ),
    Menu(
      id: 002, type: "FOOD",
      imageAsset: "assets/images/mash_potato_2.jpg",
      name: "Garlic Mashed Potatoes",
      description: "The potatoes and whole garlic cloves are cooked in chicken broth to add extra flavor. Once drained, the potatoes are loaded up with butter, cream cheese, and buttermilk for the perfect creamy element.",
      timeServed: "20 mins",
      rating: "4.1",
      price: "Rp 35.000,-",
      imageAssets: [
        "assets/images/mash_potato_4.jpg",
        "assets/images/mash_potato_3.jpg",
        "assets/images/mash_potato_1.jpg"
      ],
    ),
    Menu(
      id: 003, type: "FOOD",
      imageAsset: "assets/images/cream_soup_1.jpg",
      name: "Cream of Mushroom Soup",
      description: "Cream of mushroom soup is a simple type of soup where a basic roux is thinned with cream or milk and then mushrooms and/or mushroom broth are added. It is well known in North America as a common type of condensed canned soup.",
      timeServed: "40 mins",
      rating: "3.5",
      price: "Rp 45.000,-",
      imageAssets: [
        "assets/images/cream_soup_4.jpg",
        "assets/images/cream_soup_3.jpg",
        "assets/images/cream_soup_2.jpg"
      ],
    ),
    Menu(
      id: 004, type: "FOOD",
      imageAsset: "assets/images/corn_dog_1.jpg",
      name: "Corn Dog",
      description: "A corn dog is a sausage on a stick that has been coated in a thick layer of cornmeal batter and deep fried. It originated in the United States and is commonly found in American cuisine.",
      timeServed: "90 mins",
      rating: "3.5",
      price: "Rp 27.000,-",
      imageAssets: [
        "assets/images/corn_dog_4.jpg",
        "assets/images/corn_dog_3.jpg",
        "assets/images/corn_dog_2.jpg"
      ],
    ),
    Menu(
      id: 005, type: "FOOD",
      imageAsset: "assets/images/aceh_noodles_1.jpg",
      name: "Original Aceh Noodles",
      description: "Mie Aceh is a spicy noodle dish typical of Aceh in Indonesia. Thick yellow noodles with sliced beef, mutton or seafood (prawns and squid) served in a savory and spicy curry-like soup.",
      timeServed: "60 mins",
      rating: "4.4",
      price: "Rp 49.000,-",
      imageAssets: [
        "assets/images/aceh_noodles_2.jpg",
        "assets/images/aceh_noodles_3.jpg",
        "assets/images/aceh_noodles_4.jpg"
      ],
    ),

    Menu(
      id: 001, type: "CAKE",
      imageAsset: "assets/images/lemon_blueberry_cake_1.jpg",
      name: "Lemon Blueberry Cake",
      description: "This Lemon Blueberry Cake recipe was meant for summer. This cake is seriously SO moist, tender and full of amazing lemon flavor. Add plenty of fresh blueberries to the mix and you have a classic cake that pretty much represents the best of summer, in cake form!",
      timeServed: "10 mins",
      rating: "4.3",
      price: "Rp 50.000,-",
      imageAssets: [
        "assets/images/lemon_blueberry_cake_2.jpg",
        "assets/images/lemon_blueberry_cake_3.jpg",
        "assets/images/lemon_blueberry_cake_4.jpg"
      ],
    ),
    Menu(
      id: 002, type: "CAKE",
      imageAsset: "assets/images/rainbow_cake_3.jpg",
      name: "Rainbow Cake",
      description: "Rainbow cake made with layers of moist vanilla buttermilk cake and easy buttercream frosting.",
      timeServed: "10 mins",
      rating: "4.0",
      price: "Rp 36.000,-",
      imageAssets: [
        "assets/images/rainbow_cake_2.jpg",
        "assets/images/rainbow_cake_1.jpg",
        "assets/images/rainbow_cake_4.jpg",
      ],
    ),
    Menu(
      id: 003, type: "CAKE",
      imageAsset: "assets/images/red_velvet_3.jpg",
      name: "Red Velvet Cream Cheese",
      description: "Red velvet cake is traditionally a red, red-brown, crimson or scarlet-colored chocolate layer cake, layered with ermine icing. Traditional recipes do not use food coloring, with the red color due to non-Dutched, anthocyanin-rich cocoa.",
      timeServed: "10 mins",
      rating: "4.0",
      price: "Rp 55.000,-",
      imageAssets: [
        "assets/images/red_velvet_2.jpg",
        "assets/images/red_velvet_1.jpg",
        "assets/images/red_velvet_4.jpg",
      ],
    ),
    Menu(
      id: 004, type: "CAKE",
      imageAsset: "assets/images/black_forest_1.jpg",
      name: "Chocolate Black Forest",
      description: "Black Forest cake has multiple (usually 4) layers of chocolate sponge cake, cherries, and whipped cream. It is frosted with whipped cream and covered with chocolate shavings and a few cherries for decoration. Kirschwasser (cherry schnapps) is used to flavor the whipped cream.",
      timeServed: "10 mins",
      rating: "4.8",
      price: "Rp 54.000,-",
      imageAssets: [
        "assets/images/black_forest_2.jpg",
        "assets/images/black_forest_3.jpg",
        "assets/images/black_forest_4.jpg"
      ],
    ),
    Menu(
      id: 005, type: "CAKE",
      imageAsset: "assets/images/funfetti_1.jpg",
      name: "Funfetti Cake",
      description: "You get a pillowy soft and tender, perfectly light and fluffy funfetti style cake that's generously dotted with rainbow sprinkles and it's swirled with a classic birthday cake and vanilla flavor. Then of course it's finished with the most luscious buttercream frosting.",
      timeServed: "10 mins",
      rating: "4.2",
      price: "Rp 30.000,-",
      imageAssets: [
        "assets/images/funfetti_2.jpg",
        "assets/images/funfetti_1.jpg",
        "assets/images/funfetti_4.jpg",
      ],
    ),

    Menu(
      id: 001, type: "COFFEE",
      imageAsset: "assets/images/dalgona_2.jpg",
      name: "Dalgona Coffee",
      description: "Dalgona coffee is a beverage made by whipping equal proportions of instant coffee powder, sugar, and hot water until it becomes creamy and then adding it to cold or hot milk. Occasionally, it is topped with coffee powder, cocoa, crumbled biscuits, or honey.",
      timeServed: "30 mins",
      rating: "4.6",
      price: "Rp 35.000,-",
      imageAssets: [
        "assets/images/dalgona_1.jpg",
        "assets/images/dalgona_3.jpg",
        "assets/images/dalgona_4.jpg"
      ],
    ),
    Menu(
      id: 002, type: "COFFEE",
      imageAsset: "assets/images/macchiato_2.jpg",
      name: "Caramel Macchiato",
      description: "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
      timeServed: "30 mins",
      rating: "4.8",
      price: "Rp 55.000,-",
      imageAssets: [
        "assets/images/macchiato_1.jpg",
        "assets/images/macchiato_3.jpg",
        "assets/images/macchiato_4.jpg"
      ],
    ),
    Menu(
      id: 003, type: "COFFEE",
      imageAsset: "assets/images/expresso_4.jpg",
      name: "Coffee Espresso",
      description: "Espresso coffee can be made with a wide variety of coffee beans and roast degrees. Espresso is the most common way of making coffee in southern Europe, especially in Italy, Spain, Portugal and France.",
      timeServed: "20 mins",
      rating: "3.4",
      price: "Rp 35.000,-",
      imageAssets: [
        "assets/images/expresso_2.jpg",
        "assets/images/expresso_3.jpg",
        "assets/images/expresso_1.jpg"
      ],
    ),
    Menu(
      id: 004, type: "COFFEE",
      imageAsset: "assets/images/matcha_dalgona_1.jpg",
      name: "Matcha Dalgona",
      description: "Dalgona matcha is made by whipping either egg whites or cream with matcha powder and sugar until thick and fluffy. The fluffy matcha is then scooped onto iced (or hot) milk.",
      timeServed: "35 mins",
      rating: "4.3",
      price: "Rp 65.000,-",
      imageAssets: [
        "assets/images/matcha_dalgona_2.jpg",
        "assets/images/matcha_dalgona_3.jpg",
        "assets/images/matcha_dalgona_4.jpg"
      ],
    )
  ];
