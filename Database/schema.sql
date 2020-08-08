DROP DATABASE IF EXISTS about_this_item;

CREATE DATABASE about_this_item;

USE about_this_item;

CREATE TABLE categories
(
  id INT PRIMARY KEY NOT NULL,
  category_name VARCHAR(20) NOT NULL
);

CREATE TABLE items
(
  id INT PRIMARY KEY NOT NULL,
  category_id INT NOT NULL,
  item_name VARCHAR(300) NOT NULL,
  item_description VARCHAR(5000) NOT NULL,
  FOREIGN KEY (category_id) REFERENCES items(id)
);

CREATE TABLE item_specs
(
  id INT
  AUTO_INCREMENT NOT NULL,
  item_id INT NOT NULL,
  specs VARCHAR
  (500) NOT NULL,
  PRIMARY KEY
  (id),
  FOREIGN KEY
  (item_id) REFERENCES items
  (id)
);

  CREATE TABLE item_highlights
  (
    id INT
    AUTO_INCREMENT NOT NULL,
  item_id INT NOT NULL,
  highlights VARCHAR
    (1000) NOT NULL,
  PRIMARY KEY
    (id),
  FOREIGN KEY
    (item_id) REFERENCES items
    (id)
  );

    CREATE TABLE shipping_options
    (
      id INT
      AUTO_INCREMENT NOT NULL,
    item_id INT NOT NULL,
    shipping_details VARCHAR
      (1000) NOT NULL,
    PRIMARY KEY
      (id),
    FOREIGN KEY
      (item_id) REFERENCES items
      (id)
  );

      CREATE TABLE return_options
      (
        id INT
        AUTO_INCREMENT NOT NULL,
    item_id INT NOT NULL,
    return_details VARCHAR
        (1000) NOT NULL,
    PRIMARY KEY
        (id),
    FOREIGN KEY
        (item_id) REFERENCES items
        (id)
      )

        INSERT INTO categories
          (id, category_name)
        VALUES
          (1, "Food");
        INSERT INTO categories
          (id, category_name)
        VALUES
          (2, "Kitchen");
        INSERT INTO categories
          (id, category_name)
        VALUES
          (3, "Electronics");
        INSERT INTO categories
          (id, category_name)
        VALUES
          (4, "Toys");
        INSERT INTO categories
          (id, category_name)
        VALUES
          (5, "Cleaning_Supplies");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (1, 1, "Granny Smith Apples - 3lb Bag - Good & Gather™", "A three-pound bag of Granny Smith Apples from Good & Gather™ makes it easy to stay stocked up on a snacktime and baking essential. Featuring a crunchy texture and a bright, tart flavor, these Granny Smith apples are sure to delight, whether you enjoy them on their own, paired with caramel peanut butter dip or baked into your favorite fruit-based pie or cake. The three-pound weight feeds the whole family, and the apples have a minimum diameter of 2.5 inches, making them equally perfect for snacking and cooking. Plus, the apples meet or exceed U.S. Extra Fancy grade standards, ensuring quality every time. Every product that carries the Good & Gather™ name starts with quality ingredients that deliver great taste, making it easier for you and your family to eat well, every day. We promise you'll love each bite, or your money back.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (2, 1, "Pink Lady Apple -each", "PACKAGING MAY VARY BY LOCATION");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (3, 1, "Spam Original Lunch Meat 12oz", "Don't knock it till you've fried it! SPAM is the timeless spiced meat. There's a reason that 12.8 cans of SPAM products are eaten every second. You can enjoy this fully cooked spiced meat hot or cold, making it perfect for home cooked meals, family get-togethers, or even camping food. Get creative with the SPAM brand and experience the flavor today! SIZZLE PORK AND MMM. SPAM is a trademark of Hormel Foods, LLC.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (4, 1, "Russet Potatoes 5lb bag", "For a potato that holds it shape well during cooking, reach for a bag of Russet Potatoes. This five-pound bag of russet potatoes can be used for baking, frying or mashing, giving you flexibility to create delicious recipes the whole family will love. Roast a pan of diced potatoes drizzled with olive oil and spruced up with garlic powder, paprika powder and Italian seasoning to give them a distinctively delicious taste that works well as a side with a range of meals. For a crowd favorite that's sure to be a hit at game night or any other gathering, slice potatoes into strips and add garlic, salted butter and fresh parsley, then roast to crisp-tender perfection. You can even slice them thinly in rounds to whip up scalloped potatoes for a hearty breakfast side dish kids and adults alike will enjoy.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (5, 1, "Lay's Classic Potato Chips 8 oz", "It starts with farm-grown potatoes- cooked and seasoned to perfection. So every Lay's potato chip is perfectly crispy and delicious. Happiness in every bite.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (6, 1, "Blue Bell Vanilla Ice Cream Cups", "Natural & artificial flavor added. The original. We're cranky about flavor. Since 1907 we've been cranky about the home-made taste of our ice creams. So cranky, in fact, we have people whose only job (if you call eating our ice cream a job) is to taste test Blue Bell to make sure it's perfect. Obviously, our preoccupation with taste has paid off because Blue Bell Homemade Vanilla is one of the most popular ice cream flavors in the country. Thanks to folks like you.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (7, 1, "DiGiorno Rising Crust Pepperoni Frozen Pizza", "The DIGIORNO Rising Crust Pepperoni pizza is made with only the very best: California vine-ripened tomatoes, real mozzarella cheese, a preservative-free crust, and is loaded with big, juicy slices of pepperoni. We made pizza history when we put this one on the menu! The DIGIORNO Original Rising Crust bakes up crispy on the outside and soft and tender on the inside. The self-rising crust has big, juicy toppings that are paired with our signature sauce for the fresh-baked taste of delivery pizza in your very own home. It's Not Delivery. It's DIGIORNO.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (8, 1, "Kraft Macaroni & Cheese Dinner Original -7.25oz", "Kraft Original Flavor Macaroni and Cheese is a convenient boxed dinner. Kids and adults love the rich taste of macaroni with cheesy goodness. This handy 7.25 ounce dinner includes macaroni noodles and original flavor cheese sauce mix, so you just need milk and margarine or butter to make a tasty family meal or a quick dinner for kids. With no artificial flavors, no artificial preservatives and no artificial dyes, boxed macaroni and cheese is always a great family dinner choice. Preparing macaroni and cheese is a breeze just boil the noodles for 7-8 minutes, drain the water and stir in the cheese mix, milk and margarine or butter. Now you can have your Kraft Macaroni and Cheese and eat it too.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (9, 1, "Oscar Mayer Center Cut Original Bacon -12oz", "Love pork? Then you'll love the Center Cut Original Bacon - 12oz from Oscar Mayer. Smoked over natural hardwood for hours, these bacon slices are hand trimmed for premium quality making it perfect for your breakfast, lunch, or dinner recipes. Go ahead and add that smoky taste to your plate with this hardwood smoked bacon for a delicious meal.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (10, 1, "Chicken Caesar Salad Bowl -6.25oz- Good & Gather", "For a an easy grab-and-go lunch with no prep required, grab a Chicken Caesar Salad Bowl from Good & Gather™. This bistro-style salad bowl is a delicious blend of crisp romaine lettuce, shredded Parmesan cheese and garlic croutons, with creamy Caesar dressing to top it all off for a classic Caesar salad flavor you'll love. It's made with white-meat chicken for added heartiness. You're sure to appreciate that the Caesar salad bowl contains no artificial flavors or synthetic colors. For added convenience, the bowl comes with a fork for eating on the go. Every product that carries the Good & Gather™ name starts with quality ingredients that deliver great taste, making it easier for you and your family to eat well, every day. We promise you’ll love each bite, or your money back.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (11, 1, "Lindt Lindor Assorted Chocolate Truffles -6oz", "The ultimate LINDOR gift for the ultimate chocolate lover. Share delightfully delicious Lindt LINDOR Assorted Chocolate Truffles in three delectable flavors with neighbors, colleagues and friends. Includes Milk, Dark and White chocolate. Discover the LINDOR truffle. Smooth, melting, luscious. When you break its shell, LINDOR starts to melt and so will you. Lindt chocolate embodies the passion and expert craftsmanship of its Lindt Master Swiss Chocolatiers. Lindt delivers a unique chocolate experience offering a distinctly smooth and rich, gourmet taste. Taste happiness wrapped in lusciously smooth, rich chocolate paired with the finest quality ingredients. Lindt. Chocolate beyond compare. Quality gurantee. Lindt sustainability.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (12, 1, "Sour Patch Kids Assorted Soft & Cherwy Candy -30.4oz", "Delicious & Mischievous SOUR PATCH KIDS candy are mischief-filled sour-then-sweet treats. Soft, chewy, and oh so fun, these tasty candies come in playful fruity flavors to help you escape the everydayness of your day. Add this package of Original SOUR PATCH KIDS Candy to your cart for sour then sweet treats.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (13, 1, "Dynasty Jasmine Rice 32oz", "Top quality Jasmine rice.Directions: Combine 1 cup Dynasty Jasmine Rice and 1-1/2 cups water in medium saucepan. Bring to a soft boil; reduce heat to low and simmer covered 20 minutes or until moisture is absorbed. Remove from heat; let stand covered 10 minutes. Fluff with fork and serve. Makes about 3 cups cooked rice. Note: If using an electric rice cooker, combine 1 cup rice and 1-1/2 cups water in electric rice cooker pot. Continue as directed by rice cooker manufacturer.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (14, 1, "Maruchan Ramen Noodle Soup Mix with Chicken Flavor", "Take your snack or lunch on-the-go with Maruchan Ramen Noodle Soup Mix with Chicken Flavor - 2.25 oz. This economical and tasty meal option takes just 3 minutes to prepare once you add boiling water, and can be easily jazzed up with your choice of extra ingredients such as egg, veggies or meat.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (15, 1, "Eggland's Best Cage-Free Grade A Large Brown Eggs - 12ct", "Eggland’s Best Cage Free Large Brown Eggs come from hens fed a wholesome, all-vegetarian diet that gives our eggs added nutrition, a superior taste, strong shells and creamy, bright yellow yolks. Eggland's Best eggs offer great taste and nutrition no matter how you like your eggs - fried, scrambled, hard-cooked, in a quiche or in your favorite baked good recipe. Stock up today on endless possibilities for breakfast, lunch, dinner, and even snack time. Eggland’s Best Cage Free eggs are from hens that are free to roam in an area that includes sunlight, shade, shelter, an exercise area, fresh air, and protection from predators.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (16, 1, "Bimbo Soft White Bread - 20oz", "Give your breakfast a boost with Soft White Bread from Bimbo®. Simple and super soft, this delicious breakfast bread is enriched with calcium and vitamins making it a family favorite for busy mornings. With its yummy taste, use this white bread to make your favorite sandwich complete with all the fixings.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (17, 1, "FIJI Natural Artesian Water - 6pk/16.9 fl oz Bottles", "Pack includes 6, 500ml (16.9oz) bottles of FIJI Water. The 500ml size is perfect for everyday on-the-go hydration. Its soft, smooth taste comes from its extraordinary source -- a protected artesian aquifer found deep underground in the remote Fiji Islands. FIJI Water is the choice of discerning top chefs, fine restaurants and hotels around the world. FIJI GIVES BACK: Since its founding in 2007, The Fiji Water Foundation has supported the communities where we live and work, including providing health care access to local communities, building educational facilities, and helping preserve the Sovi rainforest");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (18, 1, "Coca-Cola - 12pk/12 fl oz Cans", "Enjoy Coca-Cola's crisp, delicious taste with meals, on the go, or to share. Serve ice cold for maximum refreshment.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (19, 1, "Corona Extra Lager Beer - 12pk/12 fl oz Bottles", "Corona Extra Mexican Beer is an even-keeled import beer with fruity-honey aromas and a touch of malt. Brewed in Mexico since 1925, this bottled beer offers a flavor that's smooth, refreshing and balanced between heavier European imports and lighter domestic beers. Crisp, clean and well balanced between hops and malt, this cerveza has a superior taste profile from superior ingredients - the finest-quality blend of filtered water, malted barley, hops, corn and yeast. Corona Extra is a great summer beer, so enjoy it with friends at your next barbecue, beach day or tailgate. This easy-drinking lager beer contains 3.6% alcohol by weight, 4.6% alcohol by volume, 0 grams of fat and 149 calories per 12oz serving. Find Your Beach. Relax responsibly. Corona Extra Beer. Imported by Crown Imports, Chicago, IL");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (20, 1, "Chips Ahoy! Original Chocolate Chip Cookies -13oz", "The Crunchy Side of CHIPS AHOY! Crunchy with lots of real chocolate chips, Original CHIPS AHOY! Cookies are a household favorite. Delight friends at school or the office, prep for a crowd, or enjoy a simple yet sweet snack with this treat.Add this package of CHIPS AHOY! Original Chocolate Chip Cookies to your cart for snacks and desserts.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (21, 2, "OXO Softworks Corkscrew", "The OXO SoftWorks Corkscrew features a non-stick screw that slides smoothly into corks, taking the strain off your hands. A wide, comfortable non-slip knob turns to lift the die-cast zinc wings. Once they're fully engaged, simply push down and watch the cork glide out of the bottle neck. Use the SoftWorks Corkscrew to uncork vinegar, olive oil and more.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (22, 2, "Oster Classic Series 5-Speed Blender - Black BLSTCP-B00-000", "The new Oster Classic Series 5-speed blender starts with 700 power watts and goes to 450 blending watts, for chunk-free smoothies and shakes, fresh vegetable soups, salsa, and more. The 5 speed settings and the easy-to-use control panel give you plenty of control. The easy-clean blending jar is dishwasher safe and shatterproof, so it can go right from the dishwasher to blending icy cold drinks. Crush ice, pulverize, and chop with precision using the stainless steel Crush Pro 4 blade, and rely on the Duralast All-Metal Drive, with the power to blend up to 10,000 smoothies.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (23, 2, "Sunbeam 2 Slice Wide-Slot Toaster - Brushed Stainless Steel TSSBTRSB04", "The perfect accompaniment to a hearty breakfast is golden brown toast that crunches just the way you like, and this Sunbeam 2-Slice Extra-Wide Slot Toaster will give you perfectly browned bread each time. With this toaster's extra-wide slots to accommodate thicker bread slices, bagels and more, you get to choose exactly what you want to toast. It has dual controls on each side to adjust browning levels or cancel toasting at any time, and the sleek, compact design is a great space saver on the countertop.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (24, 2, "KitchenAid Variable-speed Cordless Hand Blender", "All the Power You Expect, without the Cord. Go where ambition takes you with the Cordless Hand Blender from KitchenAid. Designed with a powerful rechargeable Lithium Ion Battery, the new cordless hand blender delivers optimal runtime and performance, so you can cook wherever*, whatever, and however you choose. Blends 25 bowls of soup on a full charge.**");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (25, 2, "Chefman 3.7qt Digital Air Fryer", "Achieve the deep-fried flavor you love, without the oil and added calories. The Chefman Digital Air Fryer allows you to bake, fry and roast like a pro. It's 3.5-liter capacity and flat basket gives you the ability to cook enough for a hungry crowd all at once. Make better-for-you fries that are crispy and tasty, roast chicken, or heat up leftovers for a quick and easy meal. The temperature control with 60-minute timer automatically shuts off once food is done. The basket is dishwasher safe for easy clean-up, so you'll have more time to dream up your next air-fried meal!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (26, 2, "Takeya Flash Chill Iced Tea Maker", "2QT FLASH CHILL® Iced Tea Maker - Assorted ColorsOur 2QT FLASH CHILL Iced Tea Maker features the patented FLASH CHILL method, which chills freshly brewed tea in seconds, locking in freshness, flavor and nutrients at its peak, delivering the perfect glass of iced tea.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (27, 2, "NutriBullet Blender Combo", "Got kitchen ambitions? The NutriBullet combo blender is our one-for-all option: a super-capable, super-flexible blender that makes everything from simple smoothies to savory soups and beyond. Its high-capacity 64oz. pitcher is the ultimate countertop titan, while its portable travel cups keep you nourished on-the-go. Our blades, cups and pitcher are designed to work together for optimal nutrient extraction, turning ordinary food into superfood.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (28, 2, "Set of 4 Coasters Natural Acacia with Gold Metal - Threshold", "Looking for a handy coaster set for your parties? This Set of 4 Natural Acacia Coaster with Gold Metal is great on both design and function. The coasters cork bases are nonslip and won’t scratch or scuff your tables. What's more, you can use them on any type of surface.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (29, 2, "Cravings by Chrissy Teigen 13.28oz Mini Cast-Iron Dutch Oven", "The Cravings™ by Chrissy Teigen 4.7-inch Pre-Seasoned Cast Iron Mini Dutch Oven provides you with all the benefits of a traditional Dutch Oven with the convenience of a more compact size. Your guests will love having an individual portion of your culinary creation straight from the oven to the table. Oven safe up to 450 degrees F.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (30, 2, "Lodge 6qt Cast Iron Enamel Dutch Oven", "A flawless pairing of form and function, the Lodge Enameled Dutch Oven is a classic way to both prepare and serve memorable meals. The 6 quart capacity is perfect for pot roasts, scrumptious stews, or a large batch of beans.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (31, 2, "Calphalon Premier Hard Anodized Nonstick Space Saving Fry Pan Combo", "Designed with unique vessel and handle designs that allow cookware with the same diameter to stack and nest in any order, the Calphalon Premier Space Saving Nonstick 8-Inch and 10-Inch Fry Pan Combo securely stacks to save 30% more space compared with non-stacking Calphalon cookware items when stacked with like diameter. The durable, hard- anodized construction allows for even heating with no hot spots and is dishwasher-safe for easy cleanup. The 3-layer nonstick interior is durable enough to withstand metal spatulas, spoons, and whisks.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (32, 2, "Calphalon Premier 10pc Hard Anodized Nonstick Space Saving Cookware Set", "Designed with unique vessel and handle designs that allow cookware with the same diameter to stack and nest in any order, the Calphalon Premier Space Saving Nonstick 10-Piece Cookware Set securely stacks to save 30% more space compared with non-stacking Calphalon cookware items when stacked with like diameter. The durable, hard-anodized construction allows for even heating with no hot spots and is dishwasher-safe for easy cleanup. The 3-layer nonstick interior is durable enough to withstand metal spatulas, spoons, and whisks.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (33, 2, "Stoneware Sugar Cellar Cream - Hearth & Hand™ with Magnolia", "For a sweet decorative addition to your kitchenware, add the Stoneware Sugar Cellar from Hearth & Hand™ with Magnolia. Made from durable stone in a warm, creamy color, this stone sugar cellar has the word 'Sugar' engraved on the front in a rustic font. It's perfect for storing larger amounts of sugar in one place so you can always have some on hand for all of your baking purposes.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (34, 2, "Set of 4 Natural Acacia Dip Bowls - Threshold", "Made for serving up the perfect portion of condiments or finishing touches, this Set of 4 Natural Acacia Dip Bowls is a staple for anyone who loves to entertain. This matched set is a great way to add a natural touch to your cocktail party or family dinner. And the timeless bamboo finish blends in beautifully with almost any decor style.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (35, 2, "Cheese Slicer Marble/Wood", "Entertain with ease when you use the Marble and Wood Cheese Slicer from Threshold™. The simplest way to serve up fresh slices of cheddar and pepperjack for your guests' crackers is to do it yourself. The two-tone cheese slicer features a marble block set against a wood one, with a copper-finished steel handle to bring down the slicing wire. This marble cheese slicer will enhance any wine and cheese party.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (36, 2, "Set of 4 Cheese Knives Marble White", "For your next wine and cheese party — or when you’re having a cheesy craving — let the Marble Cheese Knife Set from Threshold™ take care of everything. With four different knives that are used to spread, slice and serve, you’ll be ready to enjoy your tasty treat in sleek style. The marble handles add a chic look that will fit in with even the nicest cheese trays.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (37, 2, "Farberware 15pc Stainless Steel Knife Block Set", "This Farberware 15-Piece Stainless Steel Cutlery Set is a sleek addition to a modern kitchen, and includes all the essential knives for everyday food prep tasks. Knives feature high-carbon, stainless steel blades that hold an extremely sharp, fine edge for effortless cutting. The durable stainless steel handles are ergonomically designed for comfort in the hand and, combined with the black rubberwood storage block, give the set a contemporary, upscale look. This 15-piece set includes: 8-inch chef knife, 6-inch bread knife, 6-inch slicing knife, 5-inch serrated utility knife, 4-1/2 inch Santoku knife, 3-inch paring knife, six steak knives, all-purpose shears, sharpening steel, and wood block with black finish. Hand-wash with warm water and a mild detergent; rinse and dry immediately.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (38, 2, "Pryce Silverware Set 20-pc. Stainless Steel", "Now dine in style with this 20-piece Stainless Steel Pryce Silverware Set from Room Essentials. The set includes 4 dinner forks, 4 dinner spoons, 4 dinner knives, 4 salad forks and 4 teaspoons.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (39, 2, "Spectrum Euro Fruit Tree", "Display your fruits and vegetables in style with the Euro™ Fruit Tree by Spectrum. The open design lets air circulate, allowing your fruits and vegetables to ripen evenly. Designed to be the focal point of your kitchen table or countertop, its clean design will add a modern fair to your home. Made of sturdy steel.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (40, 2, "Telford Tumbler 12pc Glass Tumblers", "Bring this simple and elegant glassware collection — Telford Glass Tumblers from Threshold™ — home for your next casual party and give your guests a taste of their favorite beverages. This set includes six short and six tall glass tumblers which are versatile for everyday use or for entertaining. A perfectly formed design with a slight contour helps you grip well avoiding spills. From serving fresh juices to refreshing beverages, these gorgeously crafted all-purpose glasses are just ideal. Stock up with this practical set for your friendly gathering or formal setting and you'll be visitor-ready.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (41, 3, "Samsung QN43LS03T 43-inch The Frame QLED 4K UHD Smart TV", "Artwork television movies and memoriesThe Frame TV showcases it all on a beautiful QLED screen. Every piece of content is displayed in stunning 4K resolution and accented by a customizable stylish bezel that seamlessly complements your homes dcor. Quantum HDR 4X Expands the range of color and detail beyond whats possible on HDTVs. Quantum Processor 4K This powerful processor uses deep-learning AI to transform everything you watch into stunning 4K. 100% Color Volume with Quantum Dot Quantum Dots produce over a billion shades of color that stay true to life even in bright scenes. Real Game Enhancer+ Engineered to make the TV and gaming console work seamlessly together to reduce lag tearing and stuttering. Motion Rate 240 Minimizes motion blur on screen so action-packed movies and sports stay smooth and crisp. Wide Viewing Angle Get a great picture from every seat. Adaptive Picture Your TV reacts and adjusts to the lighting conditions around it. HDR Formats Supported HDR10 (Static MetaData) HDR10+ (Dynamic MetaData) HLG (Hybrid Log Gamma). All Samsung 4K UHD TVs also meet the CTA HDR-Compatible Definition. Art Mode The Frame transforms into a beautiful work of art when youre not watching TV. Activate the built-in motion sensor so whenever you walk into the room your TV displays one of your favorite selections. Art Mode Slide Show Program The Frame to display a fresh image as often as you like. Samsung Collection The Frame includes a gallery of professionally curated art with 20 pieces from ten different genres. My Collection My Collection is an easy way to create your own personal collection storing all your favorite works of art in one place with up to 2GB of storage space. Art Store Buy individual pieces or subscribe to an ever-increasing library of established and emerging artists work. Smart TV Powered by Tizen Go beyond smart TV with next-gen apps super-easy control and a host of enhancements that elevate the TV-watching experience. Universal Guide One simple on-screen guide organizes your streaming and live TV content while also making recommendations. Ambient Mode+ Elevates your space by turning a blank screen into decor artwork pictures or other visuals. Multiple Voice Assistants Built-in Alexa the Google Assistant and Bixby voice assistants let you control your TV with your voice get information and do so much more. TV Plus Enjoy your favorite content through virtual channels. Mobile View Easily send smartphone content to your TV to simultaneously display live and casted content share photos or visualize music. Samsung OneRemote The sleek and slim OneRemote automatically detects and controls all compatible connected devices and content. SmartThings Compatible Experience more than TV with a dashboard for seamlessly controlling your smart home devices and appliances. What's in the Box Samsung OneRemote (TM-2050A) No-Gap Wall Mount One Connect Box One Invisible Connection Cable 5m Specifications Screen Size Class: 43-inch Screen Diagonal Measurement: 42.5 inches Dimensions:(W x H x D):TV Without Stand: 38.1 x 21.9 x 1.8 TV With Stand: 38.1 x 23.7 x 8.4 Stand Footprint: 0.5 x 6.6 x 11.5 Weight (lb):TV without stand: 24.3 TV with stand: 24.7 VESA Support: Yes (200 x 200) WARNING: California Residents - Proposition 65. This product can expose you to chemicals known to the State of California to cause cancer and birth defects or other reproductive harm. For more information go to www.P65Warnings.ca.gov");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (42, 3, "LG 24-inch Class 720p 60Hz LED HDTV - 24LF454B", "An ideal TV for the bedroom, den or other small space should combine performance, convenience and design. Its space-saving 23.6-inch screen provides great color and contrast. This HD 720p TV displays a crisp, clear picture that brings color to your shows and movies. The compact VESA wall-mountable LG 24LF454B delivers a high-definition picture and expands your experience along with HDMI and Component Video connectivity. To simplify the mounting process, the rear panel of the TV arrives with the necessary screw holes to accept an industry-standard VESA 75 mount (75mm x 75mm configuration). Wall-mount the LG TV quickly and securely with common VESA-compliant hardware.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (43, 3, "VIZIO D-Series 40-inch Class (39.50-inch Diag.) 1080p Full-Array LED Smart HDTV - D40f-G9", "Introducing the all-new VIZIO D-Series™ 40” Class (39.5-inch Diag.) Smart TV with Full HD resolution and the excellent picture performance of full array LED backlighting delivering exceptional light uniformity and picture performance.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (44, 3, "Apple AirPods Pro", "Active Noise Cancellation for immersive sound. Transparency mode for hearing and connecting with the world around you. A more customizable fit for all-day comfort. Sweat and water resistant.* All in a super light, in-ear headphone that’s easy to set up with all your Apple devices. *AirPods Pro are sweat and water resistant for non-water sports and exercise and are IPX4 rated. Sweat and water resistance are not permanent conditions. The charging case is not sweat or water resistant. *Requires an iCloud account and macOS 10.14.4, iOS 12.2, iPadOS, watchOS 5.2, or tvOS 13.2 or later. *Siri may not be available in all languages or in all areas, and features may vary by area. *Battery life varies by use and configuration. See apple.com/batteries for details.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (45, 3, "Bose QuietComfort 35 Wireless Headphones II", "Turn any space into an instant office — or simply a place to unwind, listen to music, or make phone calls. QuietComfort® 35 Wireless Bluetooth Headphones II deliver everything you need to be productive: world-class noise cancellation, Bluetooth for quick wireless connectivity, and a dual-mic system to make or receive clear phone calls, even in loud environments. With Alexa and Google Assistant built in, you can control music, send & receive texts, and get answers using just your voice - without looking at your phone. Just press and hold the Action button, and start talking. With Bose QuietComfort 35 Wireless Noise Cancelling Headphones II, you can be free from wires by connecting easily to your devices with Bluetooth® and NFC pairing. They feature up to 20 hours of wireless listening per charge and are designed with premium materials that make them lightweight and comfortable for all-day wear.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (46, 3, "Bose SoundSport Free True Wireless Earbuds", "Demanding workouts demand SoundSport® Free wireless headphones. They’re completely free of wires and packed full of technology. Some wireless headphones pop, crack and hiss from a weak wireless connection, but these earbuds are designed to play reliably and consistently. No matter if your phone is in your hand, your pocket or strapped to your arm. Or in your nearby gym bag. Sweat a lot? Don’t sweat it. These earbuds are designed to keep rain and moisture out. Worried about losing an earbud? Don’t sweat that either. Bose® StayHear®+ Sport tips on each lightweight earbud stay comfortably and securely in place all workout long. And the Bose Connect app helps you track them if misplaced. When you’re done working out, the magnetized case also keeps the earbuds securely in place while they recharge. Off a single charge, the earbuds can play for up to five hours—long enough to power you through almost any workout. A fully charged case gives you two additional earbud charges—or up to 10 hours of battery life. Voice prompts talk you through Bluetooth® pairing. You also can use the right earbud to take calls and access your phone’s Siri or your Google Assistant™—while your left ear remains open to the world around you.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (47, 3, "New Powerbeats Wireless Earphones", "High-performance wireless Powerbeats earphones are built to keep you moving.The adjustable, secure-fit earhooks maximize comfort and stability, while a reinforced design for sweat and water resistance lets you take it to the next level. And with up to 15 hours of listening time, you can stay charged through multiple workouts and fuel your training with powerful, balanced sound. Available in three colors: Black, White, and Red.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (48, 3, "PlayStation 4 1TB Console", "Put your gaming hats on and immerse yourself into a fantastical world. The PlayStation 4 console just what you need for a gaming night with your friends. This PS4 is a bundle of fun and lets you play all your favorite games. Perfect for your home video game console, it comes with DualShock controller and has an HDMI output. This PlayStation 4 slim features a 1 TB hard drive and can be used to watch movies as well. Sit back with a pair of headsets and launch yourself in a virtual world of fun with the all-new slim PlayStation. Featuring beautiful graphics and HDR support, this PlayStation will keep you hooked for hours. This PS4 is lightweight and sleek and will provide you with years of fun expriences. If you are looking for a Christmas gift for your kids, a PlayStation is ideal! Any time is game time! This 1 TB console is just the right pick for you, so jump in on your PlayStation!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (49, 3, "NBA 2K21: Mamba Forever Edition - PlayStation 4", "NBA 2K21 is the latest title in the world-renowned, best-selling NBA 2K series, delivering an industry-leading sports video game experience. With best-in-class graphics and gameplay, competitive and community online features, and deep, varied game modes, NBA 2K21 offers one-of-a-kind immersion into all facets of NBA basketball and culture - where Everything is Game. The NBA 2K21 Mamba Forever Edition includes the following digital items: 100,000 Virtual Currency, 10,000 MyTEAM Points, 10 MyTEAM Tokens, 60 MyCAREER Skill Boosts, 30 MyCAREER Gatorade Boosts, 40 MyTEAM Promo Packs (10 at launch, then 3 per week), Sapphire Damian Lillard and Zion Williamson MyTEAM cards, 5 MyPLAYER Shoe Collection, MyPLAYER backpack, Kobe Bryant Digital Collection");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (50, 3, "Call of Duty: Modern Warfare - PlayStation 4", "Players will engage in breathtaking covert operations alongside a diverse cast of international special forces and freedom fighters throughout iconic European cities and volatile expanses of the Middle East. And the story doesn't end there. In Call of Duty: Modern Warfare, players will be thrust into an immersive narrative spanning the entire game. Experience the ultimate online playground with classic multiplayer, or squad-up and play cooperatively in a collection of elite operations accessible to all skill levels. © 2019 Activision Publishing, Inc. ACTIVISION, CALL OF DUTY, and MODERN WARFARE are trademarks of Activision Publishing, Inc. All other trademarks and trade names are the properties of their respective owners. * Timed exclusive until 10/1/2020.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (51, 3, "Cyberpunk 2077 - PlayStation 4", "Cyberpunk 2077 is an open-world, action-adventure story set in Night City, a megalopolis obsessed with power, glamour and body modification. You play as V, a mercenary outlaw going after a one-of-a-kind implant that is the key to immortality. You can customize your character’s cyberware, skillset and playstyle, and explore a vast city where the choices you make shape the story and the world around you.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (52, 3, "Marvel's Avengers - PlayStation 4", "Marvel’s Avengers is an epic, third-person, action-adventure game that combines an original, cinematic story with single-player and co-operative gameplay*. Assemble into a team of up to four players online, master extraordinary abilities, customize a growing roster of Heroes, and defend the Earth from escalating threats. In a future with Super Heroes outlawed, a young Kamala Khan must reassemble the Avengers to stop AIM. Marvel’s Avengers continues the epic journey with new Heroes and new narrative delivered on an ongoing basis, for the definitive Avengers gaming experience. Marvel’s Avengers will be available on September 4th, 2020 for PlayStation 4, plus PlayStation 5 owners can upgrade to the PS5 version of the game at no additional cost. Players can also enjoy cross-gen play between PlayStation 4 and PlayStation 5. *Specific features and details to be shared at a later date");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (53, 3, "LG 27GN750-B 27 UltraGear 16:9 240Hz Full HD IPS Gaming Monitor with NVIDIA G-Sync Compatible & Adaptive-Sync, HDR 10", "UltraGear Gaming Monitor. World's First Nano IPS Monitor with 1ms. Innovation Beyond Boundaries. See your way to victory with the innovative 27GN750 UltraGear gaming monitor, providing the most crisp visuals and the sharpest clarity. You can experience breath-taking immersion on a Nano IPS display with a 1ms response time. IPS 1ms GTG. Incredible Speed to Victory. If you're fed up with dimming and flickering screens, you've come to the right monitor. With IPS 1ms GTG, you'll dominate and clinch victory-without the side effects of extreme speed. 240Hz Refresh Rate. Fluid Gaming Motion. Objects are rendered more clearly for smoother gameplay and an almost surreal visual fluidity. Being able to see even the most dynamic and fast-moving objects amidst all the action can give gamers a competitive edge. IPS with sRGB 99%. Feel Actual Combat with True Colors. IPS display with 99% of the sRGB provides outstanding color accuracy and wider viewing angle, so it delivers high-fidelity color for reproducing even more vivid scenes on the battlefield. NVIDIA G-SYNC Compatible. LG 27GN750 Monitor is a NVIDIA-tested and officially verified G-Sync Compatible monitor, reducing screen tearing and minimizing stutter for a smoother, faster gaming experience. Adaptive-Sync FreeSync. Clearer, Smoother and Faster. With Adaptive-Sync FreeSync technology, gamers can experience seamless, fluid movement in hi-resolution and fast-paced games. It virtually eliminates screen tearing and stuttering. HDR 10. Greater Clarity, More Realistic. 27GN750 supports HDR 10, enabling realistic visual immersion with rich colors and contrast. Regardless of the battlefield, gamers experience the sensation of being in the center of it. See all the dramatic colors the game developers intended. Dynamic Action Sync. Real-time Action. Catch every moment with minimized input lag for better performance. Black Stabilizer. Attack First in Dark. Gamers can avoid snipers hiding in the darkest places and quickly escape situations when the flash explodes. FPS Crosshair. Increase accuracy in First-Person-Shooter games with the center display Crosshair feature. Stylish and Ergonomic Design. Complete Your Battlestation. Jump into your favorite games without the distraction of unsightly borders. With an ultra-thin 3-side bezel that unites form and function. Enjoy more comfortable viewing with versatile screen tilt, height and pivot adjustments.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (54, 3, "HP 27-inch LED Computer Monitor (X3W26AA_ABA)", "Welcome home a new view into the world with the HP 27-inch LED Computer Monitor. This cutting edge monitor boasts a full HD backlit display that will bring pictures to life. With the bezel-less display and the edge-to-edge panel, enjoy life-like viewing with no faults. The ultra-wide viewing angles at 178 degrees ensures you have clear visibility anywhere around the monitor. The 16:9 aspect ratio makes this screen a great option for home movies, gaming, coding or design.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (55, 3, "HP 24-inch LED Computer Monitor (1LU21AA_ABA)", "ULTRA THIN DESIGN: Pushing the limits of thin in an eye-catching design with an innovative use of high-strength and lightweight metal. ULTRA WIDE: Panoramic 178° angle viewing with consistent detail and vibrant color. EDGE to EDGE PANEL: with ultra-wide viewing angles and vivid 1920 x 1080 resolution, the virtually edge-to-edge panel means maximized screen area and expansive entertainment. COMPACT DESIGN: Slim design and single connection gives you more room for an enhanced computing experience. EXTREME DETAIL: Amazing clarity with 10,000,000:1 dynamic contrast ratio for richer colors and clarity. ALSO INCLUDES: Anti-glare panel, VGA and HDMI connections with easy port access, HDMI cable. Impossibly thin. Irresistibly priced. The sleek design of this LCD display is easy on the eyes. And the crisp vibrant view from almost any angle comes at an ultra-affordable price.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (56, 3, "Thermaltake Riing Plus 14 RGB Software Enabled 140mm Case Fan", "Thermaltake combines the patented gorgeous LED light with cutting-edge technology to deliver a brand new experience of using PC cooling, the Thermaltake Riing Plus 14 LED RGB Radiator Fan TT Premium Edition. A 140mm high-static pressure fan with a patented 16.8 million colors LED ring and 12 controllable single LEDs, the Riing Plus 14 RGB features compression blades, hydraulic bearing and a digital fan controller, and can be controlled by the patented Riing Plus RGB Software. Cool your system with high performance Thermaltake Riing Plus 14 RGB Fans!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (57, 3, "Thermaltake Matrix Magnetic Fan Filter", "Matrix Magnetic Fan Filter is the easiest of all computer air filters to use. There is no need for any skills. No screws, no tools, no glue and no hassles. These filters are magnetic and will attach themselves to the metal strip that is supplied. Simply stick and the filter is ready to install!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (58, 3, "TCL ALTO 5+ 2.1 Channel Sound Bar", "Alto 5+ sound bar delivers distortion-free sound at any volume level and for any content. With dedicated components for left and right speakers, coupled with fine-tuning by experienced audio engineers, you will be able to hear every detail with crisp clarity. The sound bar also delivers unmatched sound in its class, without the hassle of complicated setup. A wireless subwoofer delivers extra bass to make movies and music content on your TV come to life. And because it's wireless, you can place the subwoofer virtually anywhere to adjust your exposure to bass. Whether you want to connect to your TV using an Optical or Audio Cable (Aux /3.5mm), all necessary cables are included in the accessory kit. Easily place the sound bar under your TV, or wall mount it with the included wall mounting kit to ensure you get it just right the first time. Alto 5+ comes with IR pass-through cable, allowing you to access your TV from TV remote, irrespective of sound bar placement. This sound bar is equipped with three different sound modes to deliver optimized sound for Music, Movies, and News.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (59, 3, "Amazon Fire TV Stick with 4K Ultra HD Streaming Media Player and Alexa Voice Remote (2nd Generation)", "With more power, a lightning-fast processor, support for 802.11ac Wi-Fi, and a new antenna design, Fire TV Stick 4K allows you to enjoy a more complete 4K Ultra HD streaming experience. Finding 4K Ultra HD content has never been easier on Fire TV-just press and ask, Alexa, find 4K movies, or browse recommendations on your home screen. Fire TV Stick devices have more storage for apps and games than any other streaming media stick. Switch seamlessly between your headphones and sound system-pair compatible Bluetooth headphones with Fire TV to listen to movies, TV shows, and music.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (60, 3, "Roku Streaming Stick+ Black 3810R", "Powerful & portable. 4K & HDR streaming with long-range wireless. Roku® Streaming Stick®+ is super-charged with a long-range wireless receiver for 4x the range and brilliant HD, 4K, and HDR picture quality. You’ll enjoy a stronger signal for smooth streaming even in rooms farther from your router. The included voice remote features buttons to turn on your TV, control the volume, mute, and search across channels with your voice. With easy access to free TV, live news, sports, movies, and more on hundreds of free channels, there’s plenty to enjoy without spending extra.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (61, 4, "Small Foot Wooden Toys Smack the Bird Knock Playset with Hammer", "Peep, peep! Six cheeky little birds nod their colorful heads under the direction of young hammer experts aged 18 months and up. When one bird lowers its head, another one raise his head. This unique hammering bench is made of robust solid and laminated wood and always awakens the senses over and over again. Happy hammering! Suitable for ages 18 months and older.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (62, 4, "Transformers Studio Series 68 Deluxe Movie 3 Leadfoot - Target Exclusive", "Reach past the big screen and build the ultimate Transformers collection with Studio Series figures, inspired by iconic movie scenes and designed with specs and details to reflect the Transformers movie universe. In the Battle of Chicago scene from Transformers: Dark of the Moon, Leadfoot and the Wreckers turn the Decepticons into scrap. This Studio Series 68 Deluxe Class Leadfoot figure features vivid, movie-inspired deco and converts from robot to licensed NASCAR racecar mode in 18 steps. Remove backdrop to showcase Leadfoot in the Battle of Chicago scene. Includes 5 detailed weapon accessories and Steeljaw figure. Fun for adults and kids ages 8 and up! Fans can add this figure to their Studio Series Wreckers collection along with 58 Deluxe Roadbuster and 63 Deluxe Topspin figures! Each sold separately, subject to availability.Transformers and all related characters are trademarks of Hasbro. Includes: figure, 6 accessories, removable backdrop, and instructions. Figure scale: 4.5 inches. Ages 8 and up. Warning: Choking Hazard -- Small parts may be generated. Not for children under 3 years.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (63, 4, "Marvel Legends Deadpool's Head Premium Interactive Head", "The Marvel Legends Deadpool’s Head is a premium, electronic, interactive, app-enhanced collectible with over 600 SFX and phrases, multiple sensors, and motors for expressive movement. Using the free app, set Deadpool up to play pranks, insult your friends and loved ones, or wake you up every morning… maybe even on time! Featuring a design inspired by the Merc with a Mouth, the Deadpool’s Head is a killer collectible for any nerd’s shelf. (Note: Deadpool’s Head will not actually kill you. It’d get lonely. Copyright 2020 MARVEL. Hasbro and all related terms are trademarks of Hasbro. Includes: head and instructions.Alkaline batteries required, not included.");

        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (64, 4, "WWE Wrekkin Slambulance", "It's time to wrekk and roll with the WWE Slambulance! This vehicle features over 8 breakaway pieces for the ultimate wrekkin' action! Get the excitement rolling by wrekkin' the side panels, the doors, the bumper, light panel, hood, top and a breakaway side leading to the stretcher inside the vehicle! But wait! Kids can push the 'chaos' button in the hood and the spring-loaded stretcher shoots out of the back of the Slambulance! Whoa! Place a WWE action figure (sold separately) on the stretcher for even more wrekkin' fun! The Slambulance vehicle is approx. 17.7 x 8.7 x 7.4-in / 44.9 x 22 x 18.79-cm and has rolling wheels and 8+ wrekkin' parts. All pieces are designed to fit easily back into place! Makes a great gift for ages 6 years old and up especially fans of WWE and action play! Colors and decorations may vary.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (65, 4, "It (2017) Ultimate Well House Pennywise 7-inch Action Figure", "From the acclaimed 2017 horror film IT, drawn from the pages of Stephen King’s original novel, NECA presents Pennywise the Dancing Clown! Based on Bill Skarsgård’s portrayal of the nightmare-inducing clown, this 7” scale figure has been painstakingly detailed to be as accurate to Pennywise’s ornate costume as possible. To recreate even more of the most terrifying scenes from the movie, this version features 4 all-new head sculpts, a fencepost that can be inserted into one of the heads, a new monster right hand, new grabbing hands, and an additional new left hand. This edition comes in collector-friendly deluxe window box packaging with opening flap.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (66, 4, "Cabbage Patch Kids 9-inch Deluxe Splash N' Float - Brown Eye Girl Unicorn", "Introducing the all-new 9-inch Splash 'N Float Tiny Newborn! Inspired by trendy pool floaties, these newborns are ready for lots of splashin' fun! with an adorable removable swimsuit and matching headband or sunglasses, the 9-inch Splash 'N Float is ready for endless water play! Adopt yours today and float in style with adorable Unicorn or Flamingo tubes!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (67, 4, "Cry Babies Kristal Gets Sick & Feels Better", "Poor Cry Babies Kristal is sick! Can you take care of her? Give her the right medicine and some cuddles to help her feel better! If she gets a cough, give her the medicine to help her stop coughing. If she gets a fever, you will need to dab her forehead with the wet cloth to help cool her down. When red spots appear on her face, give her the injection to make them disappear! Like all Cry Babies, Kristal also cries real tears when you remove her dummy and makes realistic baby sounds. 6 accessories included; pacifier, stethoscope, cloth, syrup and a thermometer. Ages 3 and up");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (68, 4, "Squishy Human Body Anatomy Kit", "Exploring anatomy with squishy parts and pieces. Take a journey into the science that really goes inside - anatomy! Designed in a way that encourages learning through play, the SmartLab Squishy Human Body will take kids on a journey through the human body, picking up cool facts and tidbits along the way. The hands-on fun continues as you take apart and re-assemble the 12-inch human model with the squishy organs, fitting in the bones and muscles - and then proudly displaying your human body model on the included stand! Contents includes: 9 Squishy Organs; 12 Bones and Muscles; Plastic Tweezers and Forceps; Organ-izer Poster and 24 Page Book; Human Body Model & Stand and Instruction Sheet.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (69, 4, "Thames & Kosmos Gross Gummy Candy Lab", "Gross new shapes, delicious new flavors! Mold your own delicious gummy worms and spiders using a natural gelatin-like ingredient called carrageenan that comes from seaweed. Flavor and sweeten your mixture with mixed berry and green apple flavors and then mold the gummy worms and spiders in the included mold. You can even add citric acid to make sour gummies! Learn about the scientific properties of natural polymers. Food ingredients included.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (70, 4, "Creativity for Kids Grow N' Glow Terrarium", "Explore the world of science and nature by creating your own mini ecosystem with this terrarium kit for kids! A terrarium is a miniature garden in a simulated natural environment. The Grow N’ Glow Terrarium is a complete science kit for kids to explore and create their very own miniature eco-system. It’s so easy and comes with everything you need to decorate and complete a Grow N’ Glow Terrarium with two plant life-cycles. Inside the DIY kit you will find a plastic mason-style jar, a blue decorative lid, potting soil, Organic Chia seeds, Wheat Grass seeds, forest themed garden figurines, glowing sand, river stones, stickers and a plant mister to water your terrarium. You just assemble, decorate, water and watch it grow! It’s a fun way to teach kids about science, botany eco-systems and the life cycle of plants. Kids love to see how things work and especially how the magic of seeds, soil, sun and water will blossom into green plants! This educational toy is a great lesson in cause-and-effect, responsibility and patience. The Grow N’ Glow Terrarium will also encourage independent and screen-free play. Build creative confidence and entertain with this at home and indoor activity for kids! This science kit is a unique way to unplug, unwind and have fun while learning. The plants will only thrive if they’re given water each day and when your child does water it, the seeds begin to shoot up in 3 to 4 days. After assembly, there are delightful forest themed stickers and glow-in-the-dark constellation and star stickers to embellish your terrarium further. At night your mini ecosystem will glow in the dark and give your science kit a unique shine! The Grow and Glow Terrarium is the perfect STEAM activity that mixes art and science. This science kit for kids is a great project for homeschoolers working on a botany unit, or for anyone who’d like to have a sweet little decorative terrarium by day and a glow-house by night! Everything you need in this educational set is included for 2 full planting life-cycles, so you can plant your terrarium and watch it grow, then do it all again in a month or so, depending upon how long your plants thrive. The Creativity for Kids Grow N’ Glow Terrarium science kit is kid tested and safe. Since 1976, Creativity for Kids has proudly created safe and innovative products that meet or exceed U.S. Safety Standards and encourage creativity and imagination in children. Your child will develop their fine motor skills, enjoy using their creative side to build and construct their own terrarium and watch it grow in a few short days! Great for gifting! This unique educational toy combines science and creativity which promotes self-expression. Girls and boys will both love creating their own terrarium and watching it grow! This STEM kit is recommended for girls and boys, ages 6 to 96.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (71, 4, "B. toys Toy Drum Set 7 Instruments - Parum Pum Pum", "The B. toys Parum Pum Pum Drum offers loads of musical fun! It features centipede drumsticks, an ant jingle bell, a bee maraca, a caterpillar tambourine, and an egg shaker. The drum has a big handle with a soft cotton strap that makes it easy for your child to carry and play on the go. Create rhythmic sounds that will make everyone in the room want to dance around. Or hand out the instruments and let your friends play along! All of the pieces in this set store easily inside the drum to keep your room neat and tidy, and it’s perfect for building fine motor skills and hand-eye coordination.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (72, 4, "VTech Mix And Match-a-Saurus", "The VTech Mix And Match-a-Saurus is all you need to keep your kiddo laughing, dancing and roaring for hours. The toy comes with 3 emotion tiles, 3 music tiles and 3 character tiles. You can customize and decide how the dino interacts with your child simply by placing those tiles on the dino's back. You can make your baby meet the happy hip-hop dino or the angry marching monster. Depending on what tiles you place on the dino's back, the dinosaur will move, sing, dance, talk and keep the child engaged. This helps children follow along for gross-motor play. Your cutie will learn so much about social and emotional skills with the help of the emotion tiles. Your child will soon start to understand emotion and healthy ways of expressing its feelings.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (73, 4, "Star Wars Walkie Talkies", "Send messages in a flash! Star Wars Kylo Ren and Sit Style: Bring Kylo Ren and Sit with you wherever you go. Static Free & Extended Range: Enjoy your playtime with static free quality and extended range. Easy to Use: The easy to use push to talk button makes these walkie talkies kid friendly so they can enjoy their playtime right out of the box. Play with Friends: Grab a friend and have a blast with these 2 way walkie talkies. Perfect Gift: This will make the perfect gift or birthday present for your little one.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (74, 4, "Mira Royal Detective on the Case Detective Set", "Discover fun adventures with the Mira On the Case Detective Bag Set, inspired by Disney Junior’s new show, Mira Royal Detective. Little detectives can solve any mystery, big or small, with this adorable detective set! Use Mira’s magnifying glass to reveal hidden images within her signature detective notebook and re-enact favorite cases from the show! Kids can wear Mira’s bracelet and hair comb. The set also includes a dry erase marker and sticker sheets. Once the case is solved, kids can store all their detective accessories in Mira’s handbag, shaped just like an elephant. Mira’s On the Case Detective Bag Set includes one elephant handbag, one detective notebook with secret reveals, one magnifying glass, one bracelet, two sticker sheets, and one dry erase marker. Ages 3+");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (75, 4, "Melissa & Doug Deluxe Solid-Wood Magic Set With 10 Classic Tricks", "This fantastic set includes 10 professional caliber, yet easy-to-master, tricks for beginners! Young magicians will improve their confidence and fine motor skills as they amaze family and friends with exciting tricks and illusions! Secret Silks, Magic Number Prediction, Egyptian Prediction are among the ten classic tricks included. Say the magic word and this fabulous set can be yours! The process of preparing and performing their magic act is ideal for building confidence and poise, as well as exercising creativity and dramatic flair as they take the stage to perform. Sturdy wooden pieces, thick-woven rope, and shatterproof mirrors mean this high-quality set is built to stand up to countless rehearsals. The classic nature of the tricks also means they won’t seem stale or babyish as kids grow. They’re sure to be loved for years to come. Children will get a kick out of seeing the very same acts performed by real magicians at professional magic shows. The Melissa & Doug Deluxe Magic Set makes an ideal gift for kids ages 8 years and up. Add the Melissa & Doug Discovery Magic Set to inspire hours of hands-on, screen-free play. For more than 30 years, Melissa & Doug has created beautifully designed imagination- and creativity-sparking products that NBC News called the gold standard in early childhood play. We design every toy to the highest-quality standards, and to nurture minds and hearts. If your child is not inspired, give us a call and we'll make it right. Our phone number is on every product!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (76, 4, "L.O.L. Surprise! Winter Disco Cottage Playhouse", "If your L.O.L. Surprise! fans love imaginative role play, then look no further than the L.O.L. Surprise! Winter Disco Playhouse. Both you and your kids are sure to love this fierce, fashionable playhouse with its light-up disco ball, inflatable chair, glittery details, working doors, windows, and shutters. Your kids will love the fun role play elements like a working mail slot and flag holder (flag not included) that will spark their imaginations. It's easy to assemble and take apart your new playhouse with minimal hassle and tools (tools not included), and the lightweight design makes it easy to move, transport, or store as well. The L.O.L. Surprise! Winter Disco Playhouse can be used indoors or outdoors, so there's no limit to what your kids can imagine as they play.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (77, 4, "KidKraft Ocean Front Playhouse", "Play time just got more exciting with the KidKraft Ocean front Playhouse. This beautiful house features a functional mailbox, a clock and a doorbell. The large decorative windows has a cafe-style canopy and a chalkboard to display the menu. This child-friendly, coastal-inspired playhouse is a must-have. Made of metal, wood and plastic, this playset is strong and sturdy and will last for years to come. Play time has never been this fun!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (78, 4, "Melissa & Doug Food Truck Indoor Corrugate Playhouse (Over 4' Long)", "There's plenty of room to get playtime cooking and to satisfy hungry imaginations in this roomy two-in-one food truck! The large, sturdy corrugate vehicle playhouse lets kids serve barbecue from one side and ice cream from the other. It stands nearly four feet tall and is more than four feet long, giving plenty of space for multiple kids to play. The truck's exterior is covered with vibrant, incredibly detailed, realistic full-color artwork. This unique play space is packed with playful details, such as a steering wheel that spins, a loudspeaker on top, a gas tank for fill-ups, decorated awnings, and service windows on both sides. It even comes with menus, signs, and a sandwich board to advertise little chefs' creations! Kids three and older will be taking their imaginations on the road for years to come! The steering wheel spins, and kids can learn and play with the menus, signs, drink display, sandwich board, and loud speaker on roof, which are all included. This pretend food truck makes an exceptional gift for kids from 3 to 5. Add the Melissa & Doug Let's Play House! Condiment Set to round out the hands-on play experience and give kids another engaging option for screen-free fun. For more than 30 years, Melissa & Doug has created beautifully designed imagination- and creativity-sparking products that NBC News called the gold standard in early childhood play. We design every toy to the highest quality standards, and to nurture minds and hearts. If your child is not inspired, give us a call and we'll make it right. Our phone number is on every product!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (79, 4, "Mega Bloks CAT Large Dump Truck Construction Set", "Have your little truck driver get behind the wheel of the CAT Dump Truck by Mega Bloks! Your child can haul all sorts of loads by pushing the truck around. The CAT Dump Truck has a huge rear bin that tilts back and dumps out its contents with ease!Ideal for children aged 1 to 5!");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (80, 4, "Mega Bloks GJD22 Junior Builder Mini Bulk Tub 180 Piece Large Block Building Set", "Build, stack, and spark imagination with the Mega Bloks Junior Builders Mini Bulk Tub. This large building block sets comes with 180 bright building blocks for hours and hours of creativity and fun. Get your little builder's imagination going with this big building tub filled with classically-colored blocks and special pieces. Made just for your toddler's growing hands, this construction toy includes 180 building blocks and special pieces like a wheelbase and windows and doors that open and close. Ideal for toddlers and kids ages 2 and up, these plastic building blocks are made for little hands. Inspiring creativity and exploration, this tub is perfect for beginning builders or for growing your little construction fan's block collection. The possibilities are endless with these plastic building blocks. Encourage fine motor skills, imagination, creativity, and basic engineering skills with the Mega Bloks Junior Builders Mini Bulk Tub.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (81, 5, "Lemon & Mint Glass Cleaner - 28 fl oz - Everspring™", "Streak-free shine, 90% biobased product, Not tested on animals, Non-toxic to humans when used as directed, Ammonia free, 100% natural fragrance");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (82, 5, "Windex Ammonia Free Glass Cleaners - 26oz", "Windex Ammonia-Free Glass Cleaner offers a streak-free shine you can depend on and a fragrance experience you'll love. It's safe to use on all glass surfaces including car windows. Bottle made from 100% recycled plastic. Give Life a Sparkle with Windex cleaners! Use to clean: windows, mirrors, glass, and more.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (83, 5, "Mrs. Meyer's Lavender Glass Cleaner - 24 fl oz", "Mrs. Meyer's Clean Day Glass Cleaners feature hard-working yet gentle streak-free glass cleaning agents, while also providing a special, singular scent for your entire home. Lavender scented window and mirror cleaner has a soothing and tranquilizing scent. This herb has long been prized for its original and clean floral scent. Such a pretty and reassuring herb! We combine garden inspired scents, essential oils, and plant-derived cleaning ingredients to shine mirrors and other glass surfaces inside and outside the home. Our ammonia free glass cleaner spray leaves surfaces sparkly clean and streak-free. Made without parabens, formaldehyde, animal derived ingredients, and always a cruelty free glass cleaner. Available in other garden inspired scents and biodegradable products such as dish soaps and laundry detergents! Mrs. Meyer's - rooted in goodness.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (84, 5, "Seventh Generation Sparkling Sea Glass Cleaner - 23oz", "Putting a sparkle on your windows, mirrors, and other surfaces shouldn't bring tears to your eyes. Seventh Generation Glass & Surface Cleaner is the powerful, plant-based formula you've been searching for to deliver a streak-free shine without harsh fumes. Our Glass Cleaner is safe for glass, mirrors, stainless steel and other surfaces. Our product does not create unpleasant fumes and will not leave harmful residues. Our Glass and Surface cleaner is Hypo-allergenic, Biodegradable, Bio-based based and contains NO dyes or synthetic fragrances. At Seventh Generation, we do business differently. We believe our products are healthy solutions for use within your home-and for the community and environment outside of it. We are always evaluating how to reduce their environmental impact, increase performance and safety, and create a more sustainable supply chain. We believe it is our responsibility to set a course for a more mindful way of doing business, where companies act as partners with other stakeholders to create a brighter future for the whole planet. Seventh Generation is proud to be a Certified B Corporation. B Corps are certified to be better for workers, better for communities, and better for the environment. By choosing Seventh Generation products, you're joining us in nurturing the health of the next seven generations.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (85, 5, "Method Citron Antibacterial All Purpose Spray - 28 fl oz", "This handy germ-buster is made with a formula that’s tough on grease and grime and easy on surfaces. Plus, you’ll be happy to know that it kills 99.9% of household germs—including influenza A flu virus, staphylococcus aureus, rhinovirus and salmonella enterica. So all that’s left behind is a fresh scent and a smile. Citron sounds like a lemon’s fancy cousin. And that’s pretty much what it smells like, too. It’s tangy and bright with a touch of sophistication. The kind of happy, uplifting fruit that would be singing French tunes while scrubbing your home clean and leaving everything smelling fresh + fantastic.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (86, 5, "Clorox Disinfecting Bathroom Cleaner Spray Bottle 30 oz", "Clorox Disinfecting Bathroom Spray cleaner has been proven to cut through dirt, grime and soap scum faster than the leading bathroom cleaner. It also kills germs commonly found in the bathroom such as Salmonella choleraesuis (Salmonella), Staphylococcus aureus (Staph), Rhinovirus Type 37 and Influenza A virus (Hong Kong). This cleaner leaves behind no dull residue and is perfect for freshening and cleaning tubs, tile, toilets, sinks and counters. The Smart Tube technology insures you spray every stain fighting drop. Behind every sparkling clean bathroom, there is Clorox Disinfecting Bathroom Spray.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (87, 5, "CloroxToilet Bowl Cleaner Clinging Bleach Gel - Cool Wave", "Clorox Toilet Bowl Cleaner, Clinging Bleach Gel, a disinfecting gel that clings to your toilet bowl's surface, delivering the trusted Clorox clean to all areas and leaves a Cool Wave scent. This non-abrasive toilet bowl cleaner removes dirt and grime, destroying 99.9% of germs with the disinfecting power of bleach. Its unique dispensing nozzle easily delivers that cleaning power under the bowl rim. This thick clinging, gel formula coats the bowl 50% longer versus Clorox Toilet Bowl Cleaner Tough Stain Remover for a deep clean and eliminates odor-causing bacteria so stains and odors don't stand a chance. Clean, sanitize and disinfect with Clorox Toilet Bowl Cleaner in a Cool Wave scent.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (88, 5, "Seventh Generation Emerald Cypress & Fir Toilet Bowl Cleaner - 32oz", "Seventh Generation Toilet Bowl Cleaner has a plant-based formula that attacks stubborn stains in your toilet bowl in a flash. Our Emerald Cypress & Fir scent is made from 100% essential oils and botanical extracts. This toilet bowl cleaner will freshen your toilet without creating harsh fumes. Our formula is biodegradable and septic safe. We don't add chlorine bleach, synthetic fragrances, dyes or other harsh ingredients to this formula. Our flip cap is designed to help you coat your whole toilet bowl for maximum effectiveness. At Seventh Generation we do business differently. We believe our products are healthy solutions for use within your home-and for the community and environment outside of it. We are always evaluating how to reduce their environmental impact, increase performance and safety, and create a more sustainable supply chain. We believe it is our responsibility to set a course for a more mindful way of doing business, where companies act as partners with other stakeholders to create a brighter future for the whole planet. Seventh Generation is proud to be a Certified B Corporation. B Corps are certified to be better for workers, better for communities, and better for the environment. By choosing Seventh Generation products, you're joining us in nurturing the health of the next seven generations.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (89, 5, "Swiffer Sweeper Dry + Wet All Purpose Floor Mopping and Cleaning Starter Kit with Heavy Duty Cloths - Includes 1 Mop - 10 Refills", "A 2-in-1 hard surface sweeping and mopping tool. The dry sweeping cloth has deep ridges and grooves that conform to the surface of your floor to trap and lock dirt, dust and hair, while the wet mopping pad dissolves dirt and grime and traps it away giving you an amazing clean.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (90, 5, "Swiffer WetJet Floor Mop Starter Kit 1 Power Mop 5 Mopping Pads 1 Floor Cleaner Liquid Solution", "Swiffer WetJet Floor Spray Mop gives you a great clean on virtually any floor in your home. With a unique dual nozzle sprayer, this all in one mopping system breaks up and dissolves tough messes for a powerful clean. Its cleaning solution loosens dirt and lifts it off the floor, pulling dirt and grime into the WetJet pad and locking it away for good. ABSORB + LOCK STRIP helps trap dirt & grime deep in pad so it doesn't get pushed around. Starter kit includes 1 power floor spray mop, 3 extra power pad refills, 2 original mopping pad refills, (1) 500ML bottle of cleaning solution, 4 batteries.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (91, 5, "Arm & Hammer Carpet Odor Eliminator - Pet Fresh - 42.6oz", "Pet Fresh™ Carpet Odor Eliminator helps rid your home of the not-so-nice part of having a pet. Unwanted hair and dirt are vacuumed up with ease, and odors are destroyed deep down at the source.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (92, 5, "O-Cedar EasyWring Spin Mop and Bucket System", "O-Cedar's EasyWring microfiber mop delivers a better clean by effectively removing dirt, grime and over 99% of bacteria* with just water. The EasyWring is a better way to truly clean your floors! The foot pedal on the bucket allows for hands-free wringing to prevent bending over and wet hands. Control the level of moisture on your mop with the built-in, high-quality foot pedal while Splash Guards keep the water inside the mop bucket. This is an ideal deep-cleaning solution for all hard floors, such as hardwood, tile, laminate, marble, and ceramic. It can be used wet or dry depending if floors need mopping or dusting. Everyone can use this mop as the telescopic handle adjusts to 51 inches. *Removes over 99% of E.coli and Staph. aureus from pre-finished hardwood flooring and ceramic tile using tap water, as tested at a 3rd party lab.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (93, 5, "Libman Large Precision Angle Broom with Dustpan", "The Libman XL Precision Angle Broom with Dustpan is precisely cut to reach under cabinets and tight corners. The guaranteed quality construction of this broom and dustpan makes it great for indoor and outdoor use. Along with guaranteed quality the Libman XL Precision Angle Broom with Dustpan is environmentally friendly being constructed with broom fibers made from recycled PET bottles. Will not scratch floors. Grabs dust and dirt. Family Made in America.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (94, 5, "Gain flings! Laundry Detergent Pacs Original + Original In-Wash Scent Booster - Bundle", "Gain flings! Laundry Detergent Pacs Original - 35 ct: Easy-to-use Gain flings unit-dose laundry detergent brings 50% more* Original scent to your laundry room and your clothes. Oxi boost fights stains while odors are removed with the odor- elimination technology of Febreze, so your clothes are left wonderfully clean with an amazing scent. With more of the Gain Original scent you love, flings are music to your nose. *Scent ingredients vs. Gain Original. Gain Fireworks Original In-Wash Scent Booster - 10 oz: Gain fireworks are scent beads that give your clothes an extra boost of amazing Gain scent. You know that thing you would never do when you’re really happy, because that’s too over-the-top? Sorry, but when you smell Gain Original, you’re gonna do that thing.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (95, 5, "Tide Original Liquid Laundry Detergent - 92 fl oz", "America’s #1 detergent*, now even better. This Tide liquid laundry detergent now has 10x the cleaning power**. The improved formula is reengineered to attack tough body soils. Tide’s HE Turbo Clean detergents feature Smart Suds™ technology. The quick-collapsing suds clean faster and rinse out quicker, even in cold cycles. Tide HE laundry detergent keeps your whites white and your colors colorful with a refreshing scent, wash after wash. Available in Original and Clean Breeze scents. The Tide clean you love is also available in Tide PODS laundry pacs. * Based on sales, Nielsen laundry detergent category ** Stain Removal of 1 dose vs. 10X doses of the leading liquid bargain brand ");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (96, 5, "All Ultra Free Clear HE Liquid Laundry Detergent - 141oz", "When it comes to laundry care for sensitive skin, all Liquid Laundry Detergent is the obvious choice. This hypoallergenic laundry detergent is the #1 recommended detergent brand by dermatologists, allergists and pediatricians for sensitive skin. 100% free of perfumes and dyes, all Free Clear is hypoallergenic and gentle on sensitive skin. Use with all Free Clear fabric softener and dryer sheets for clean and soft clothes with static cling reduction in the dryer. This detergent is safe to use in any washing machine and at any water temperature. All Free Clear is also available in convenient Mighty Pacs. This package includes one 141 fl oz bottle of all Free Clear liquid laundry detergent, enough for 94 loads.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (97, 5, "Bounce Outdoor Fresh Dryer Sheets - 250ct", "We admit, the outdoors smell great. But with our Bounce Outdoor Fresh fabric softener dryer sheets you also get fewer wrinkles, way less static cling, repel lint and hair while keeping your fabrics soft - all on top of an outdoor fresh scent. Ahhhhh, now that's a breath of fresh air.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (98, 5, "Gain Original Dryer Sheets - 105ct", "More scent. More softness. Less static. For daring noses, we hear the trifecta of Gain Original scent laundry detergent + fabric softener + dryer sheets is the way to go. Wash your laundry with matching scents in Gain Laundry Detergent, Liquid Fabric Softener, and Scent Booster Beads then add dryer sheets to the dryer to keep your laundry smelling amazing even after six weeks.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (99, 5, "Dyson Slim Ball Animal Upright Vacuum", "The Dyson Slim Ball upright vacuum cleaner is engineered to remove dirt and microscopic dust on all floors, for tough tasks. The advanced self-adjusting cleaner head automatically adjusts between all floor types - sealing in suction for a powerful clean across your entire home. Its wand and hose release in 1 smooth action to make it easier to clean up high and under furniture. Whole-machine HEPA filtration, ensures that allergens and bacteria are trapped inside the machine, not expelled back into the home.");
        INSERT INTO items
          (id, category_id, item_name, item_description)
        VALUES
          (100, 5, "iRobot Roomba 675 Wi-Fi Connected Robot Vacuum", "Connect to clean from anywhere with the Roomba® 675 robot vacuum. The patented 3-Stage Cleaning System is specially engineered to loosen, lift, and suction everything from small particles to large debris from carpets and hard floors. Just press Clean or schedule Roomba on the go with the iRobot® HOME App.");

        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (1, "Each bag includes 3lbs of Granny Smith apples");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (1, "Apples have a minimum diameter of 2.5in");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (1, "Meets or exceeds U.S. Extra Fancy grade standards");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (2, "Delicious, nutritious Pink Lady Apple!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (2, "Rinse before consuming");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (2, "Perishable, keep refrigerated");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (3, "#1 canned lunchmeat brand");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (3, "Fully cooked canned pork with ham");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (3, "0 grams trans fat and 1 gram of sugar per serving");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (3, "7 grams of protein with 180 calories per serving");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (3, "Shelf stable; does not require refrigeration until after it's opened");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (4, "5lb bag of russet potatoes makes for a great pantry staple");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (4, "Easy to spruce up with a range of seasonings in a variety of recipes");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (4, "Perfect for baking, frying and mashing");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (4, "U.S. Grade No. 1");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (4, "Brand and packaging may vary");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (5, "Includes 1 (8oz) bag of Lay's Potato Chips, Classic Flavor");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (5, "Farm-grown potatoes seasoned with just the right amount of salt");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (5, "Only 3 Ingredients: Potatoes, Vegetable Oil, and Salt");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (5, "Lay's Classic Potato chips are made with no artificial flavors, no preservatives, and are Gluten Free");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (5, "Delicious alone or when with your favorite onion dip");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (6, "Natural & artificial flavor added.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (6, "The original homemade vanilla flavor.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (7, "Preservative-free crust");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (7, "Real Mozzarella Cheese");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (7, "California vine-ripened tomatoes");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (7, "Fresh baked taste");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (8, "One 7.25 oz. box of Kraft Original Flavor Macaroni and Cheese");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (8, "Kraft Original Flavor Macaroni and Cheese is a convenient boxed dinner");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (8, "Box includes macaroni noodles and original flavor cheese sauce mix");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (8, "Contains no artificial flavors, no artificial preservatives and no artificial dyes");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (8, "One box makes 3 servings");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (9, "Real hardwoods produce naturally smoked bacon flavor");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (9, "Create a rich flavor and texture with these center cut bacon");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (9, "Pork used raised without hormones");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (9, "Contains 1.5 g. sat fat, 0 g sugars and 240 mg sodium");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (10, "Tasty Grab & Go Salad");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (10, "Salad bowl makes an easy meal option");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (10, "Includes fork for convenience");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (10, "Chicken Caesar Salad with no artificial flavors or synthetic colors");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (11, "Milk, Dark and White Chocolate");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (11, "Individually wrapped truffles for easy sharing");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (11, "A variety pack for that perfect gift");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (12, "This package contains 1 resealable 1.8 lb family size bag of Original SOUR PATCH KIDS Candy.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (12, "Let your imagination (and taste buds) run wild with soft, chewy, and fun SOUR PATCH KIDS candy, the mischief-making treat beloved by everyone.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (12, "First they're sour. Then they're sweet! These chewy, kid-shaped confections turn treats at the movies, school, and the office into a tasty, play-filled break.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (12, "This bag is perfect for sharing. Fill goodie bags, gift baskets, or treat jars, prep for a party, or stock your home or office.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (12, "Each serving of candy is 150 calories.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (13, "High in fiber");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (13, "Convenient resealable bag");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (13, "Product of Thailand");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (14, "Chicken flavor ramen noodle instant lunch");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (14, "Easy preparation with 3 minute cook time");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (14, "Great for a quick, on-the-go meal");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (14, "Zero trans fats");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (15, "Award-winning, farm-fresh taste from cage free hens fed an all-vegetarian diet");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (15, "25% Less Saturated Fat than ordinary eggs");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (15, "6X more Vitamin D, 10X More Vitamin E, and more than 2X the Omega-3s of ordinary eggs");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (15, "Good Source of Protein and Excellent Source of Vitamins B12, B5, & B2");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (15, "Stay fresher longer than ordinary eggs");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (15, "Carton is made from 100% Recycled Materials and is fully recyclable");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (16, "Soft white bread enriched with calcium and Vitamins A, D and E");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (16, "No artificial flavors or colors");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (16, "No high fructose corn syrup");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (17, "PACK SIZE: Pack of 6, 500mL (16.9oz) bottles");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (17, "EVERYDAY HYDRATION: Perfect for quenching thirst on the go, in the office, and at events");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (17, "NATURAL ELECTROLYTES: As tropical rain filters through volcanic rock, it gathers electrolytes naturally, giving FIJI Water significantly more electrolytes than other brands");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (17, "NATURAL ARTESIAN: Bottled from a natural artesian aquifer in the remote Fiji Islands ·SOFT, SMOOTH TASTE: As it filters through ancient rock, water naturally acquires that silica that gives FIJI its signature soft, smooth taste");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (18, "Coca-Cola is the most popular and biggest-selling soft drink in history, as well as the best-known brand in the world");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (18, "Created in 1886 in Atlanta, Georgia, by Dr. John S. Pemberton, Coca-Cola was first offered as a fountain beverage at Jacob's Pharmacy by mixing Coca-Cola syrup with carbonated water");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (18, "Bring home the refreshing taste of Coca-Cola");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (18, "Perfect size for drinking with meals, on the go, or any time");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (18, "For crisp, cold taste, serve chilled at 37 degrees");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (19, "Crafted with a blend of filtered water, malted barley, hops, corn and yeast");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (19, "An even-keeled imported beer with a crisp, clean and refreshing flavor");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (19, "Brewed since 1925, this Mexican lager style beer offers a smooth, well balanced taste");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (19, "Enjoy a Corona beer with lime at barbecues, game days and afternoons at the beach");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (19, "Contains 149 calories and 4.6% alcohol by volume");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (19, "12pk of 12 fl oz bottles of Corona Extra Mexican Beer");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (20, "One 13 oz package of CHIPS AHOY! Original Chocolate Chip Cookies");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (20, "Snack cookies loaded with real chocolate chips");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (20, "Baked to have the perfect amount of crunch");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (20, "Enjoy these CHIPS AHOY! cookies as a snack at school, work or home");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (20, "Perfect for sharing with friends and family or enjoying on your own");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (21, "Easily opens cork-topped bottles");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (21, "Die-cast zinc wings and gears");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (21, "Non-stick screw glides smoothly into cork");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (21, "Soft, comfortable non-slip grip");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (21, "Cut-out body shows cork's progress");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (22, "Powerful kitchen blender offers 700 power watts and 450 blending watts");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (22, "5 speeds, including low, medium, high, and pulse, let you make the perfect soup, smoothie, salsa, and more");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (22, "Stainless steel Crush Pro 4 Blade with a 4-point design pulverizes and chops with precision");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (22, "Duralast All-Metal Drive with durable metal-to-metal connection allows you to blend up to 10,000 smoothies");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (22, "Durable, easy-clean molded plastic finish");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (22, "Dishwasher-safe and BPA-Free plastic blending jar");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (23, "Extra-wide slots to accommodate a variety of bread, bagels, and more");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (23, "7 toast shade settings for light to dark toasting");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (23, "Dual auto-adjusting bread guides adjust to bread thickness for even toasting");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (23, "Toast lift elevates breads for easy retrieval");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (23, "Removable crumb tray for easy cleaning");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Blends 25 bowls of soup on a full charge*. With a quick charge of 20 minutes make a Triple Berry smoothie or Tomato Basil Soup.** Based on 12 ounce bowls (354 ml), 7 batches, Tomato Basil Soup.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Rechargeable Lithium Ion Battery delivers optimal runtime and performance. Battery Indicator Light signals when it is time to charge the battery.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Easy to charge with convenient charger included, which works on all products across the suite. Charge from empty to full in 2 hours or less. With a quick charge of 20 minutes make a Triple Berry smoothie or Tomato Basil Soup.* Based on 16 oz. smoothie or 44 oz.soup, when following recommended battery maintenance.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Removable 8-inch Blending Arm with a 4-point Stainless Steel blade design efficiently blends ingredients for smoothies, milk shakes, soups, hummus and so much more. Protect your cookware with the included U.S. patent-pending removable pan guard.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Variable speed trigger switch gives you greater flexibility and control over the recipe. The safety switch protects against accidental trigger movement.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Complete Your Cordless Suite with the cordless 5 Cup Food Chopper (KFCB529) and 7 Speed Hand Mixer (KHMB732). Each sold separately.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (24, "Model KHBBV53 includes (1) Blender Arm (dishwasher-safe), (1) Blending Jar with Lid (dishwasher-safe), (1) Pan Guard (dishwasher-safe), (1) Charger.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (25, "HEALTHIER FRYING: This air fryer makes 'healthy fried foods' a reality. Temperature range from 175-400°F allows you to cook at your desired temperature, achieving a healthy, crispy, fried finish using at least 80% less oil than traditional fryers. Air fry vegetables, pizza, frozen foods and leftovers - this air fryer evenly crisps every inch of your food.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (25, "SPACE SAVING: A sleek, rounded shape and matte black finish earns this air fryer a prime spot on countertops- all while remaining compact and easy to store. Its flat basket design holds 40% more food than traditional air fryer baskets without any unsightly bulkiness.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (25, "PERFECTLY CRISPY RESULTS: Achieve perfectly crisp results for a wide variety of foods, with little or even no oil. Digital temperature control & 60-minute integrated timer easily let you air-fry everything from frozen veggies to mozzarella sticks, chicken or fries, and even re-heat yesterday's dessert! No need to worry about overcooking - once the timer is up, the fryer will automatically shut off.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (25, "EASY CLEAN: The 3.5-liter non-stick basket is dishwasher safe, making clean-up a breeze. When you're hand washing, keep the air fryer in great shape by using soft sponges and cloths. (Abrasive sponges like brillo pads are NOT the air fryer's friend!)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (26, "Fine mesh Tea Infuser is ideal for brewing loose leaf tea, allowing each leaf to expand, unfurl and release its full flavor.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (26, "Tea Maker Body: Specially-made to withstand rapid temperature changes from boiling hot to ice cold.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (26, "Airtight & Leakproof: Lid twists into pitcher to keep beverages fresh and to be stored upright or on side.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (26, "BPA-Free");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (26, "Dish-washer safe");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "NutriBullet Blender Combo will take your nutrition extraction to the next level with the versatility of both a multi-serving pitcher and a single serve cup.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "Three precision speeds, a pulse function and the Extract program offer full control at the press of a button.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "1200 Watts of power let you make an endless array of smoothies, soups, sauces, nut butters and beyond.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "Includes: (1) 1200 Watt Motor Base, (1) 64oz Blender with Lid and Vented Lid Cap, (1) Tamper, (1) 32oz Cup, (1) 24oz Handled Cup, (2) To-Go Lids, (1) Easy-Twist Extractor Blade, and Recipe Book");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "The Easy-Twist Extractor Blade is made of powerful stainless steel and designed with cyclonic action. Our super-durable BPA-Free pitcher and cups are made of high-performance plastic.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "Hassle-free cleaning - simply place pitcher and cups in the dishwasher and rinse the easy twist extractor blades with soap and water.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (27, "This item includes a 1 year limited warranty.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (28, "Light weight");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (28, "Beautiful and functional");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (28, "Attractive design");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (29, "The Cravings by Chrissy Teigen 4.7-inch Pre-Seasoned Cast Iron Mini Dutch Oven is perfect for cooking, baking and serving entrees and desserts");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (29, "Safe on gas, electric and induction stove-tops, also in the oven and on the grill");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (29, "Lid with interior condensation ridges assist with self-basting");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (29, "Hand wash, towel dry and season after each use to avoid rusting");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (30, "Handles and Knobs are oven safe to 500°F.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (30, "Rims are black matte enamel, cooking surface is off-white enamel.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (30, "Can be used on all cooking surfaces, including induction.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (30, "Use for any cooking technique. Use to marinate and even refrigerate.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (31, "Securely stacks to save 30% more space compared with non-stacking Calphalon cookware items when stacked with like diameter");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (31, "The unique vessel and handle designs allow the cookware with the same diameter to stack and nest in any order");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (31, "Durable, nonstick hard-anodized aluminum construction for even heating and easy release; Metal utensil-safe");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (31, "Stainless steel handles stay cool while cooking");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (31, "Dishwasher-safe and oven-safe up to 450 degrees F");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (31, "Limited Lifetime Warranty");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (32, "Securely stacks to save 30% more space compared with non-stacking Calphalon cookware items when stacked with like diameter");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (32, "The unique vessel and handle designs allow the cookware with the same diameter to stack and nest in any order");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (32, "Durable, nonstick hard-anodized aluminum construction for even heating and easy release; Metal utensil-safe");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (32, "Stainless steel handles stay cool on the stovetop; Cookware is dishwasher-safe and oven-safe up to 450 degrees F");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (32, "Set Includes: 8-in. Fry Pan 10-in. Fry Pan 2.5-qt. Sauce Pan with Lid 3.5-qt. Sauce Pan with Lid 3-qt. Sauté Pan with Lid 6-qt. Stock Pot with Lid");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (32, "Limited Lifetime Warranty");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (33, "Stone sugar cellar lets you keep all your sugar in one place");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (33, "Features the word Sugar engraved on the front in a rustic font");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (33, "Comes with an easily removable lid");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (34, "Set of 4 rustic dip bowls");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (34, "Easy to clean");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (34, "Beautiful acacia wood");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (35, "Marble and wood are a striking pair");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (35, "Cheese board includes a slicer to cut fresh cubes of cheese");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (35, "Modern cheese slicer will make a statement on any table");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (36, "Set of 4 cheese knives");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (36, "Marble and stainless-steel construction keeps them lasting, slice after slice");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (36, "Perfect for serving cheeses, meats and more");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (37, "High-carbon stainless steel blades for strength and durability");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (37, "Stainless steel satin finish handles are perfectly weighted and balanced");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (37, "Features all the essential preping tools for everyday cooking");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (37, "Handwash only");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (38, "Elegant looks and easy to clean");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (38, "Sturdy design");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (38, "Ideal for everyday use");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (39, "Sturdy steel construction");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (39, "Satin Nickel Finish");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (39, "Open design helps fruits and vegetables to ripen evenly");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (39, "Keeps bananas off the counter to prevent bruising");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (39, "11.50D X 10.75W X 15.25H");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (40, "Glass tumbler set includes 6 short and 6 tall glasses");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (40, "Simple and elegant design is ideal for everyday use or for entertaining");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (40, "Lead-free glassware");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (40, "Perfect for serving everything from fresh juices to cold beverages");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (40, "Dishwasher-safe glass tumblers will last you years");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (41, "It's a tv with a frame");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (41, "Don't you just love that frame?");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (41, "Oh my gosh, A FRAME!! It's like a PICTURE!!! Honey, how cute!!!!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "720p HD");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "No Smart Capabilities");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "1 HDMI Input");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "60Hz Refresh Rate");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "Color Master Engine");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "LED");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "3W x 2");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (42, "No USB Inputs");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "Chromecast built-in Access more than 200,000 TV shows and movies and over 30 million songs, from 1000+ apps including Netflix, YouTube, and Hulu. Download Chromecast-enabled apps to your mobile device, then simply tap the Cast button to stream your entertainment on the big screen.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "Full Array LED backlight Evenly distributes LEDs across the screen’s backlight delivering exceptional light uniformity, color consistency and a more responsive picture from edge to edge for an outstanding high definition image.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "High Definition Watch TV in crisp, clear 1080p high-definition resolution and experience a brilliant picture with the VIZIO D-Series.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "Use Voice To Control The TV This VIZIO D-Series is the perfect smart-home companion, offering voice-control support for Siri, Google Assistant, and Amazon Alexa");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "VIZIO WatchFree™ Enjoy free & unlimited TV from over 150 channels – news, sports, movies, TV shows, music, and the best of the internet. No fees, subscriptions or logins.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "Download VIZIO SmartCast Mobile™ Use your smartphone to control your D-Series – power on/off, adjust the volume, switch inputs, stream entertainment to the big screen and much more – from any room in your home");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "Six-Core Processor Quad-core GPU and Dual-core CPU for blazing fast performance and faster, smoother onscreen graphics.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (43, "Built-in WiFi Connect with high-speed wireless for easy internet access with fast load times.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Active Noise Cancellation for immersive sound");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Transparency mode for hearing and connecting with the world around you");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Three sizes of soft, tapered silicone tips for a customizable fit");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Sweat and water resistant*");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Adaptive EQ automatically tunes music to the shape of your ear");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Easy setup for all your Apple devices*");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "Quick access to Siri by saying “Hey Siri”*");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (44, "The Wireless Charging Case delivers more than 24 hours of battery life*");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (45, "World-class noise cancelling technology");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (45, "Bluetooth® and NFC pairing");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (45, "Voice access to Alexa and the Google Assistant");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (45, "Noise-rejecting dual microphone system for clearer call");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (45, "20 hours of battery life per charge");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (45, "Lightweight and comfortable headphones");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (46, "Wireless sport earbuds with powerful sound output");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (46, "IPx4-rated earbuds resist water and sweat");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (46, "Includes 3 pairs of StayHear Sport Tips (S/M/L) that provide a comfortable, secure fit");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (46, "Provides up to 5 hours of play with each charge");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (46, "Easily track lost earbuds with 'Find My Buds' feature on free Bose app");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "High-performance wireless earphones");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Up to 15 hours of listening time1");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Adjustable, secure-fit earhooks for comfort and stability");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Reinforced, sleek design for sweat & water resistance during tough workouts");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Integrated on-ear controls for music, phone calls, and voice capability");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Powerful, balanced sound with dynamic range and noise isolation");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Class 1 Bluetooth® for extended range and fewer dropouts");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "With Fast Fuel, a 5-minute charge gives 1 hour of playback when battery is low!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (47, "Enhanced phone call performance for voice clarity");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (48, "Slim, lighter & awesome!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (48, "Get ready for a new PS4 experience");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (48, "A console designed to make gaming more immersive");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (48, "PlayStation 4 1 TB of storage");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (48, "Ready. Set. Game.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (49, "Order the NBA 2K21 Mamba Forever Edition for PlayStation 4 and you will also receive NBA 2K21 and 100,000 Virtual Currency for PlayStation 5 upon release.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (49, "This edition includes 100,000 Virtual Currency, 10,000 MyTEAM points, MyTEAM packs, digital items for your MyPLAYER, and more!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (50, "Special Ops Survival Mode is an exclusive*, additional cooperative mode for PlayStation 4 Call of Duty®: Modern Warfare® players that pits you and up to three of your friends against enemy forces in intense cooperative combat. In Special Ops Survival Mode, you will fight off waves of increasingly difficult and determined combatants in a variety of experiences. Gear up and get ready for endless cooperative fun.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (50, "The stakes are so high, as players take on the role of lethal Tier One operators in a heart-racing saga that will affect the global balance of power.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (50, "Call of Duty®: Modern Warfare® engulfs fans in an incredibly raw, gritty, provocative narrative that brings a lot of intensity and shines a light on the changing nature of modern war.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (50, "Developed by the studio that started it all, Infinity Ward delivers an epic reimagining of the iconic Modern Warfare® series from the ground up.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (51, "PLAY AS A MERCENARY OUTLAW");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (52, "*One-time online access required for single-player campaign; online access required for multiplayer and to download post-launch content. Free Square Enix Members account required. Platform-specific online subscription fee may be required. Beta will launch on PlayStation®4 seven (7) days prior to other game platforms. Beta release date(s), platform and region availability to be announced.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (52, "Embrace Your Powers");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (52, "Progress through the single player campaign to rebuild your Hero roster and restore their powers; then continue to battle AIM solo or online with friends.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (52, "Unlock powerful skills and new gear for each of Earth’s Mightiest Heroes to suit your playstyle.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (53, "27 FHD (1920x1080) IPS Display");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (53, "IPS 1ms Response Time");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (53, "NVIDIA G-SYNC Compatible");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (53, "240Hz Refresh Rate");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (53, "HDR 10");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (54, "27-inch monitor from HP");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (54, "Comes with VGA and 2 HDMI connections");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (54, "1920x1080 resolution and 10,000,000:1 dynamic contrast ratio");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (55, "23.8-inch diagonal full HD backlit display");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (55, "Ultra-wide viewing angle");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (55, "Full HD at 1920x1080 resolution");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (55, "16:9 wide screen");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (55, "HDMI and VGA connections");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (55, "Includes HDMI cable");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (56, "12 Separately Controlled RGB LEDs for unrivaled Lighting Control.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (56, "Patented Riing Plus RGB Software Enabled");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (56, "9-Blade High-Static Pressure Design");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (56, "Hydraulic Bearing Low-Noise Design");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (56, "Link Capable up to 16 Controllers (80 Fans)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (57, "Fine Filter for Dust Reduction.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (57, "Magnetic Frame");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (57, "Screw Holes Ready");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (57, "Great Reliability with PSU");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (57, "Suitable for 120mm fans or vents");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (58, "Clean and loud sound packed in a minimalistic design");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (58, "Wireless subwoofer for extra bass and flexible placement");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (58, "Quick and hassle-free setup");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (58, "Wireless music streaming via Bluetooth");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (58, "Sound modes (music, movies, and news) optimize performance based on content");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (59, "The most powerful 4K streaming media stick with a new Wi-Fi antenna design optimized for 4K Ultra HD streaming.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (59, "Launch and control all your favorite movies and TV shows with the next-gen Alexa Voice Remote. New power, volume, and mute buttons to control your TV, sound bar, and receiver.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (59, "Enjoy brilliant picture and immersive sound with access to 4K Ultra HD, Dolby Vision, HDR, HDR10+, and Dolby Atmos.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (59, "Choose from 500,000 movies and TV episodes. Watch favorites from Netflix, Prime Video, Hulu, STARZ, SHOWTIME, CBS All Access, and others");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (59, "Switch seamlessly between your headphones and sound system-pair compatible Bluetooth headphones with Fire TV to listen to movies, TV shows, and music.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Wireless that goes the distance: Basement rec room? Backyard movie night? Bring ‘em on. The long-range wireless receiver gives you 4x the range and a stronger signal for smooth streaming even in rooms farther from your router");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Brilliant picture quality: Experience your favorite shows with stunning detail and clarity—whether you’re streaming in HD, 4K, or HDR you’ll enjoy picture quality that’s optimized for your TV with sharp resolution and vivid color");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Tons of power, tons of fun: Snappy and responsive, you’ll stream your favorites with ease—from movies and series on Apple TV+, Netflix, Disney+, Prime Video,The Roku Channel, HBO, and Showtime, to cable alternatives like Sling and Hulu with Live TV, enjoy the most talked-about TV across thousands of channels");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "No more juggling remotes: Power up your TV, adjust the volume, mute, and control your streaming all with one remote; Use your voice to quickly search across channels, turn captions on, and more in a touch");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Setup is a cinch: Plug it in, connect to the internet, and start streaming—it’s that simple");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Private listening on mobile: Use the free Roku mobile app to pump up the volume on your shows without disturbing the house");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Endless entertainment: Stream what you love, including free TV, live news, sports, and more; Never miss the most talked-about events, award-winning shows, latest blockbuster hits, and more—it’s easy to stream what you love and cut back on cable bills with access to 500,000+ movies and TV episodes across thousands of free and paid channels");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (60, "Enjoy free TV channels: Stream live TV, 24/7 news, sports, movies, shows, and more on The Roku Channel, plus other free channels like PBS, The CW, and CBS News—Plus, with Featured Free on your home screen, you’re one click away from a huge selection of free movies, in-season TV episodes, and more entertainment from top channels that won’t cost you a dime");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Colorful hammer bench with cute owls as play figures");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Animals pop up alternately by means of a set of seesaws below");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Includes wooden mallet");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Size: 7.7in W x 4.7in L x 5.1in H");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "High quality sturdy wood with rounded edges are painted with durable 100% certified kid safe non-toxic water based paint");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Toy playset comes in an attractive colorful packaging for gifting");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Exclusive Small Foot wooden toy design");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Designed in Germany with Guaranteed Quality");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Distributed by Legler Toys USA Inc.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (61, "Suitable for children 18+ months");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (62, "STUDIO SERIES DELUXE CLASS: Deluxe Class figures are 4.5-inch collectible action figures inspired by iconic movie scenes and designed with specs and details to reflect the Transformers movie universe");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (62, "4.5-INCH SCALE LEADFOOT WITH STEELJAW: Figure is highly articulated, featuring vivid, movie-inspired deco, and includes 5 detailed weapon accessories and Steeljaw figure");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (62, "BIG SCREEN INSPIRED: Figure scale reflects the character’s size in the world of Transformers: Dark of the Moon. Figure and packaging are inspired by the iconic Battle of Chicago scene");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (62, "2 ICONIC MODES: Figure converts between robot and licensed NASCAR racecar mode in 18 steps. Perfect for fans looking for a more advanced converting figure. For kids and adults ages 8 and up");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (62, "REMOVABLE BACKDROP: Fans can use the removable backdrop to pose and display the Leadfoot figure in the Battle of Chicago scene with their own style");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (63, "IT’S, LIKE, SO PREMIUM, YOU GUYS: Have you ever wanted to own a piece of me, Deadpool? Now you can, you lucky stiff. This Marvel Legends Deadpool’s Head Premium Interactive Head is your ticket to nerd supremacy");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (63, "MY HEAD MOVES TO AND FRO, LIKE A BALLERINA: Hath a Deadpool’s Head not eyes? It does! And it’s filled with motors and sensors, for all that sweet sweet expressive movement and interactivity! Just like your head, I assume");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (63, "THE SUITS TOLD ME TO TELL YOU THERE ARE OVER 600 SOUNDS AND PHRASES (in English only): It’s important for you to know that Deadpool’s Head talks a lot, unlike what happened in that movie we absolutely can’t reference by name. You know the one");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (63, "APP ENHANCED FOR YOUR PLEASURE: Using my free app (that’s right, no excuses) you can get me to do and say a bunch of [CENSORED], jokes, pranks, and insults! (App in English only)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (63, "LET’S INTERACT, BABY: With all these amaaaaazing features, I bet you can’t wait to click the little button and add me to your cart");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (64, "​Get wrekkin' and rolling with the WWE Slambulance vehicle featuring 8+ breakaway pieces for the ultimate wrekkin' action!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (64, "​Wrekk the side panels, doors, bumper, light panel, hood, top and a breakaway side that leads to the stretcher inside the vehicle!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (64, "​Push the 'chaos' button in the hood and the spring-loaded stretcher shoots out of the back! Whoa!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (64, "​For even more fun, put WWE action figures (sold separately) on the stretcher and shoot em' out again and again!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (64, "​All pieces are designed to fit easily back into place! Then let the wrekkin' fun begin again!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (64, "​It's the perfect gift for ages 6 years old and up especially WWE fans and those who love action play!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (65, "Based on the 2017 horror film IT");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (65, "Pennywise stands about 7 inches tall and highly articulated");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (65, "Accessories included: 4 all-new head sculpts, fencepost that can be inserted into one of the hands, new monster right hand, new grabbing hands, new left hand");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (65, "Collector-friendly deluxe window box packaging with opening flap");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (66, "Adorable removable swimsuit and matching headband or sunglasses");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (66, "Inspired by trendy pool floaties");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (66, "Adopt yours today and float in style with adorable Unicorn or Flamingo tubes!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (67, "Cry Babies Kristal cries real tears!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (67, "Includes special accessories!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (67, "When you remove the pacifier, Kristal will start crying real tears and makes realistic baby noises");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (67, "Includes Off Switch");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (68, "Fun and educational");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (68, "Take a tour of the human body from the inside out");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (68, "Great fun for children of all ages");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (68, "Science becomes an adventure");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (69, "Make your own spider and worm-shaped gummies!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (69, "Food ingredients are all-natural and included in the kit; uses carrageenan which comes from seaweed, rather than gelatin.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (69, "Learn about chemistry and physical science as you cook up these yummy, gummy treats!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (69, "Choose from green apple, mixed berry, or sour flavors.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (69, "Wrap up your creations in a plastic bag and use stickers to decorate and give as presents to friends and family.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (70, "Explore the wonder of nature with the Grow N' Glow Terrarium! This gardening craft kit allows you to craft, plant, water, nurture and grow your own mini ecosystem");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (70, "Comes with everything a young scientist needs to decorate and complete a terrarium! Science kit includes: plastic mason-style jar, potting mix, Organic Chia and Wheat Grass seeds, glow-in-the-dark forest figurines and more!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (70, "Make your terrarium glow-in-the-dark! Add dimension to your terrarium with glow-in-the-dark sand, figurines and stickers that will light up your mini ecosystem at night");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (70, "The perfect STEAM activity that mixes science and art. Create your own mini eco-system while learning about nurturing and responsibility");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (70, "Enough seeds included to complete two plant life-cycles! Your terrarium will begin to grow in as little as 3-4 days. The potting mix is vermiculite. All seeds are from and packaged in the USA.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (70, "Since 1976, Creativity for Kids has proudly curated fun and creative activities to build creative confidence and entertain while at home and indoors! This unique craft experience is recommended for ages 6+");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (71, "Toy drum set for wacky musical fun");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (71, "Includes drum, (2) drumsticks, jingle bell, tambourine, shaker, and maraca");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (71, "Instruments fit in the drum for an easy cleanup");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (71, "Strap is perfect for playing on the move");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (71, "No batteries required");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (71, "Recommended for ages 18 months and up");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (72, "An interactive dino to make learning and playtime fun and effective");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (72, "Promotes Creativity, social skills and imaginative thinking");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (72, "Make it a part of your child's toy collection");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (72, "The toy functions on AA batteries");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (73, "Push button to share adventures with friends");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (73, "Static Free");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (73, "Extended Range");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (73, "Easy push-to-talk button");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (74, "Includes one elephant handbag, one notebook with secret reveals, one magnifying glass, one bracelet, two sticker sheets, and one dry erase marker.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (74, "Use the magnifying glass to reveal the hidden images within Mira’s detective notebook.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (74, "Wear Mira’s bracelet and hair comb.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (74, "Kids can store all their detective accessories in Mira’s elephant handbag.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (74, "Ages 3+");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "TEN CLASSIC TRICKS: This set features 10 magic tricks, including Disappearing Ball, Magic Coin Box, Secret Silks, Great Escape, Magic Number Prediction, Money Maker, Egyptian Prediction, Vanishing Zone, Cylinder Squeeze, and Vanishing Coin.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "STEP-BY-STEP INSTRUCTIONS: The kid-friendly instructions bring these famous tricks within reach, giving children all of the tools they need to succeed.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "STURDY CONSTRUCTION AND EASY STORAGE: The sturdy solid-wood construction and the beautiful artwork make this a special kids magic set. Use the hinged box to store materials and to serve as a performance space.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "GIFT FOR AGES 8 AND UP: The Melissa & Doug Deluxe Magic Set makes an ideal gift for kids 8 years and up. Add the Melissa & Doug Discovery Magic Set to inspire hours of hands-on, screen-free play.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "THE GOLD STANDARD IN CHILDHOOD PLAY”: For more than 30 years, Melissa & Doug has created beautifully designed imagination- and creativity-sparking products that NBC News calls “the gold standard in early childhood play.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "100% HAPPINESS GUARANTEE: We design every toy to the highest-quality standards, and to nurture minds and hearts. If your child is not inspired, give us a call and we'll make it right. Our phone number is on every product!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (75, "Melissa & Doug is proudly partnering with the American Academy of Pediatrics to foster early brain development and help children build important life skills through play.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "The L.O.L. Surprise! Winter Disco Playhouse has a fierce, fashionable style that you and your kids will both love");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Comes with an electronic light-up disco ball that hangs inside the playhouse");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Kids will love the cute L.O.L. Surprise! inflatable chair that matches the look of their playhouse");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Features two working doors, windows and shutters");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Easy to assemble and take apart with minimal hassle and tools (tools not included)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "The built-in mail slot encourages kids to role play house");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Also features a flag holder (flag not included)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Assembled Dimensions: 42.8 x 35 x 49 inches");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Lightweight (32 lbs.) design makes this playhouse easy to move, transport, or store");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (76, "Ages: 2+ Years");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (77, "The perfect playhouse for your kids");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (77, "Ideal for 3 years and above");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (77, "Made from metal, wood and plastic for long-lasting use");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (78, "PLAY FOOD TRUCK: There's plenty of room to get playtime cooking and to satisfy hungry imaginations in this roomy 'two-in-one' food truck!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (78, "BARBECUE AND ICE CREAM: This sturdy cardboard truck is packed with playful details, including a steering wheel that spins, a loudspeaker on top, a gas tank for fill-ups, decorated awnings, and service windows on both sides. It even comes with menus, signs, and a sandwich board to advertise little chefs' creations!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (78, "GREAT GIFT FOR AGES 3 TO 5: This pretend food truck makes an exceptional gift for kids from 3 to 5. Add the Melissa & Doug Let's Play House! Condiment Set to round out the hands-on, screen-free play experience.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (78, "THE GOLD STANDARD IN CHILDHOOD PLAY”: For more than 30 years, Melissa & Doug has created beautifully designed imagination- and creativity-sparking products that NBC News called “the gold standard in early childhood play.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (78, "100% HAPPINESS GUARANTEE: We design every toy to the highest quality standards, and to nurture minds and hearts. If your child is not inspired, give us a call and we'll make it right. Our phone number is on every product!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (78, "Melissa & Doug is proudly partnering with the American Academy of Pediatrics to foster early brain development and help children build important life skills through play.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (79, "Big CAT dump truck with loading bin and truck driver Block Buddy");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (79, "Cat large dump truck with a moveable bin that tilts back to dump out blocks!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (79, "Includes 1 construction worker figurine and 25 blocks");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (79, "Comes with construction site pieces to build an authentic construction zone!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (79, "Blocks are compatible with all CAT playsets and Mega Bloks building toys for endless learning fun!​");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (80, "Building block set perfect for little hands with large, colorful bricks");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (80, "180-piece construction toy include special wheelbase, window, and door pieces");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (80, "Large plastic tub for easy storage and transport");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (80, "Ideal for toddlers ages 2 and up and nurtures fine motor skills");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (80, "Spark little builder's imagination, creativity, and basic engineering skills");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (81, "Building block set perfect for little hands with large, colorful bricks");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (81, "180-piece construction toy include special wheelbase, window, and door pieces");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (81, "Large plastic tub for easy storage and transport");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (81, "Ideal for toddlers ages 2 and up and nurtures fine motor skills");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (81, "Spark little builder's imagination, creativity, and basic engineering skills");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (82, "Bottle made from 100% recycled plastic");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (82, "Perfect for cleaning glass, windows and even car windows");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (82, "Leaves a streak-free shine!");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (82, "Lightens and brightens your home leaving it sparkling clean");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (82, "Ammonia-free formula delivers a superior fragrance experience");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (83, "Quick and easy glass cleaner shines mirrors and other glass surfaces");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (83, "Ammonia free glass cleaner which leaves surfaces sparkly and streak-free");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (83, "Usable as both an interior or exterior window washing solution");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (83, "Plant derived glass and mirror cleaner formula with natural essential oils");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (83, "Mrs. Meyer's produces cruelty free glass cleaners. None of our products are tested on animals");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (84, "Seventh Generation Glass Cleaner leaves your glass, mirrors, stainless steel and other surfaces clean with a streak-free shine");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (84, "Sparkling Sea scent derived from 100% essential oils and botanical ingredients");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (84, "0% VOCs, synthetic fragrances, dyes, or harsh fumes");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (84, "No rinsing required after using on your surfaces, simply spray and wipe clean");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (84, "Formulated to work on Chrome, Glass, Mirror, Plate Glass, Stainless Steel and much more");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (84, "Caring today for the next seven generations");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (85, "Contains one 28 ounce bottle of antibacterial disinfectant spray");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (85, "Antibacterial all purpose cleaner and disinfectant spray");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (85, "Kills 99.9% of household germs—including influenza A flu virus, staphylococcus aureus, rhinovirus and salmonella enterica");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (85, "All purpose cleaner is tough on grease and grime and easy on surfaces");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (85, "Use on kitchen surfaces, countertops, high chairs, door knobs and garbage cans");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (85, "Never tested on animals");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (86, "BATHROOM CLEANER: Make your bathroom sparkle with Clorox Disinfecting Bathroom Cleaner in a spray bottle that cleans, disinfects and kills 99.9% of viruses and bacteria");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (86, "MULTI-SURFACE CLEANER: Quickly wipe away stains on most bathroom surfaces with a sponge or cloth as the spray penetrates and removes soap scum, dirt and grime");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (86, "BLEACH-FREE CLEANING SPRAY: Powerful spray in a bleach-free formula requires zero scrubbing to remove mold and mildew stains");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (86, "DISINFECTANT SPRAY: Smart Tube technology insures you spray every drop of this bathroom cleaner, no more tilting or transferring to get the last of your home cleaning supplies");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (86, "CLOROX HOUSE CLEANER: This bleach-free spray cleaner has dependable Clorox cleaning power to eliminate any bathroom surface mess");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (87, "TOILET BOWL CLEANER: Clean and disinfect with Clorox Toilet Bowl Cleaner Clinging Bleach Gel that kills 99.9% of germs and clings 50% longer versus Clorox Toilet Bowl Cleaner Tough Stain Remover for a deep clean that leaves your toilet sparkling; Packaging may vary");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (87, "DISINFECT: Powerful clinging gel in a non abrasive, thick formula removes dirt and grime while destroying germs to make your porcelain toilet bowl look shiny and new");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (87, "BLEACH TOILET CLEANER: The perfect addition to your cleaning supplies, this toilet gel with bleach whitens and brightens while eliminating odor-causing bacteria with a special nozzle to deep clean under the bowl rim");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (87, "BATHROOM CLEANER: This antibacterial gel disinfects, cleans and deodorizes with the trusted cleaning power of Clorox in a Cool Wave scent");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (87, "POUR, BRUSH, FLUSH: Easily dispense the non-abrasive gel formula with the wide nozzle to coat the inside of the bowl, scrub and let sit, then flush away the grime. This household cleaner is safe on septic tanks");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (88, "Seventh Generation's Toilet Bowl Cleaner plant-based formula tackles stubborn stains in a flash.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (88, "Contains no chlorine, synthetic fragrances, dyes or ammonia.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (88, "Our biodegradable formula is septic safe and a USDA Certified Biobased Product 97%.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (88, "No harsh fumes, tough on stains.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (88, "Certified cruelty free by the Leaping Bunny Organization.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (88, "Caring today for the next seven generations.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (89, "Heavy Duty Dry Cloths have 2x More Trap + Lock of dirt, dust, and hair vs. multi-surface Sweeper dry cloth");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (89, "Swiffer Heavy Duty Wet Mopping Cloths Trap + Lock 50% more dirt* allowing you to quickly and easily clean all your hard floor surfaces. vs. Swiffer wet mopping pad");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (89, "Starter kit includes 1 Sweeper Device, 2 Dry Heavy Duty Cloths, 1 Wet Heavy Duty Pads, 5 Dry Sweeping Cloths, 2 Wet Mopping Pads");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (89, "Satisfaction Guaranteed or Your Money Back Via Prepaid Card Visit http://wwwswiffercom/our-commitment-to-clean/money-back-guarantee");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (89, "Safe on all finished floors, do not use on unfinished, oiled or waxed wooden boards, non-sealed tiles or carpeted floors because they may be water sensitive.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (89, "When you run out, save your Sweeper and buy more wet and dry cloth refills");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (90, "ABSORB + LOCK STRIP helps trap dirt & grime deep in pad so it doesn't get pushed around.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (90, "Designed to give you a great clean and act as a hardwood floor cleaner, laminate floor cleaner, and tile cleaner.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (90, "Starter kit includes 1 power floor spray mop, 3 extra power pad refills, 2 original mopping pad refills, (1) 500ML bottle of cleaning solution, 4 batteries");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (90, "TIP: For Best Results use with Swiffer WetJet Original Mopping Pad Refills & Swiffer WetJet Multi-Surface Floor Cleaner");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (91, "Eliminate tough odors with Baking Soda and fresh scents");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (91, "Added power of OxiClean™ Dirt Fighters");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (91, "Vacuum booster loosens 25% more dirt and pet hair than vacuuming alone");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (91, "Leaves behind long-lasting freshness");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (91, "ELIMINATE DEEP DOWN CARPET ODORS");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (92, "Deep-cleaning microfiber removes over 99% of bacteria with just water*");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (92, "Exclusive bucket design has built-in wringer that allows for hands-free wringing");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (92, "High-quality foot pedal designed to activate spin wringing, allowing the level of moisture to be controlled");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (92, "Features Splash Guard to keep splash and spray inside bucket when wringing");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (92, "Designed to clean hard to reach corners with unique triangle mop-head that rotates 360 degrees");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (92, "Effective and safe on all hard surfaces, including hardwood floors");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (93, "It's a broom, you sweep things up with it");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (93, "It includes a dustpan. Whoudathunkit??");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (93, "Amazing green color");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (94, "Includes: Gain flings! Laundry Detergent Pacs Original - 35 ct & Gain Fireworks Original In-Wash Scent Booster - 10 oz");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (94, "2 laundry items paired together for convenience");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (94, "Regular and HE Washer compatible");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (95, "America’s #1 detergent* (*Based on sales, Nielsen laundry detergent category)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (95, "10x the cleaning power** (**Stain Removal of 1 dose vs. 10X doses of the leading liquid bargain brand)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (95, "Cleans deep and smells fresh");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (95, "Cleans, freshens, whitens, brightens");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (95, "Measure with cap. For medium loads, fill just below bar 1. For large loads, fill just below bar 3. For HE full loads, fill to bar 5. Add clothes, pour into dispenser, start washer");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (95, "Infused with the Original Scent you love");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (96, "all Free Clear is the #1 recommended detergent brand by dermatologists, allergists and pediatricians for sensitive skin.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (96, "100% free of perfumes and dyes, all Free Clear is Tough on Stains, Gentle on Skin.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (96, "Use with all Free Clear fabric softener and dryer sheets for clean and soft clothes with static cling reduction in the dryer.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (96, "This laundry detergent is safe to use in any washing machine and at any water temperature.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (96, "This package includes one 141 fl oz bottle of all Free Clear liquid laundry detergent, enough for 94 loads.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (97, "Classic Bounce outdoor fresh scent");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (97, "Helps Reduce Wrinkles");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (97, "Controls static cling in fabrics and helps repel lint and hair");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (97, "Softens fabrics");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (97, "Contains biodegradable cationic softeners");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (97, "For use in all types of dryers (HE & Regular)");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (98, "Dryer sheets fight static in the dryer while adding the amazing Gain scent");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (98, "Dryer sheets also help reduce wrinkles");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (98, "Dryer Sheets");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (98, "Fight Static");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (99, "Self-adjusting cleaner head automatically adapts to all floor types.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (99, "Instant-release wand to clean high and low.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (99, "Certified Asthma and Allergy Friendly.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (99, "Ball technology steers with a turn of the wrist.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (99, "5 year warranty covers parts and labor");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "3 Stage Cleaning system loosens, lifts, & suctions dirt, dust, & hair from hard floors & carpet");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Dual Multi Surface Brushes work together to grab dust, dirt, & large debris.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Patented Dirt Detect™ sensors alert Roomba to work harder on concentrated areas of dirt.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Full suite of sensors intelligently navigate the robot under & around objects & under furniture.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Edge Sweeping Brush is specially designed to sweep debris away from edges & corners.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Connect & schedule from anywhere. Use Alexa or Google Assistant voice commands to control cleaning.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Runs for up to 90 minutes before automatically docking & recharging.");
        INSERT INTO item_highlights
          (item_id, highlights)
        VALUES
          (100, "Roomba® Essentials Smart Navigation, Auto Adjust Cleaning Head, Works on Carpets & Hard Floors");

        INSERT INTO item_specs
          (item_id, specs)
        VALUES
          (1, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (1, "Country of Origin: United States"),
          (1, "Form: Whole"),
          (1, "State of Readiness: Ready to Eat"),
          (1, "Store: Room Temperature"),
          (1, "Package Quantity: 1"),
          (1, "Package type: Individual Item Multi-Serving"),
          (1, "Net weight: 3 Pounds"),
          (1, "TCIN: 54579522"),
          (1, "UPC: 085239049457"),
          (1, "Item Number (DPCI): 266-05-0074"),
          (2, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (2, "Country of Origin: Varies, Please See Label"),
          (2, "Form: Whole"),
          (2, "State of Readiness: Ready to Eat"),
          (2, "Store: Room Temperature"),
          (2, "Package Quantity: 1"),
          (2, "Pre-package preparation: Raw"),
          (2, "Package type: Individual Item Single Serving"),
          (2, "Net weight: 5 Ounces"),
          (2, "TCIN: 15014054"),
          (2, "UPC: 204180000007"),
          (2, "Item Number (DPCI): 266-05-4180"),
          (3, "Contains: Wheat, Soy"),
          (3, "Country of Origin: United States"),
          (3, "Cut of Meat: Ham"),
          (3, "Type of Meat: Pork"),
          (3, "State of Readiness: Prepared, Heat and Serve"),
          (3, "Store: Room Temperature"),
          (3, "Package Quantity: 1"),
          (3, "Pre-package preparation: Fully Cooked"),
          (3, "Package type: Individual Item Multi-Serving"),
          (3, "Bone cut type: Boneless"),
          (3, "Seasoning or marinade: Unseasoned"),
          (3, "Net weight: 12 Ounces"),
          (3, "TCIN: 13217521"),
          (3, "UPC: 037600138727"),
          (3, "Item Number (DPCI): 212-12-0551"),
          (4, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (4, "Country of Origin: United States"),
          (4, "Form: Whole"),
          (4, "State of Readiness: Needs to Be Fully Cooked"),
          (4, "Store: Room Temperature"),
          (4, "Package Quantity: 1"),
          (4, "Package type: Individual Item Multi-Serving"),
          (4, "Net weight: 5 Pounds"),
          (4, "TCIN: 77775602"),
          (4, "UPC: 085239086377"),
          (4, "Item Number (DPCI): 211-17-0079"),
          (5, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (5, "Features: No Added MSG, No Preservatives, No Artificial Flavors"),
          (5, "Dietary Needs: Gluten Free, Certified Gluten Free, Kosher"),
          (5, "Form: Chip"),
          (5, "State of Readiness: Ready to Eat"),
          (5, "Store: Room Temperature"),
          (5, "Package Quantity: 1"),
          (5, "Package type: Individual Item Multi-Serving"),
          (5, "Net weight: 8 Ounces"),
          (5, "TCIN: 47085532"),
          (5, "UPC: 028400199148"),
          (5, "Item Number (DPCI): 071-05-1205"),
          (6, "Contains: Milk"),
          (6, "Form: Cup"),
          (6, "State of Readiness: Ready to Eat"),
          (6, "Store: Frozen"),
          (6, "Package Quantity: 12"),
          (6, "Package type: Multi-Pack Single Servings"),
          (6, "Milk fat level: 10 Percent"),
          (6, "Net weight: 36 Ounces"),
          (6, "TCIN: 13404028"),
          (6, "UPC: 071899003755"),
          (6, "Item Number (DPCI): 288-07-0688"),
          (7, "Contains: Milk, Wheat"),
          (7, "Pizza Style Type: No Style"),
          (7, "Sauce Type: Tomato Sauce"),
          (7, "State of Readiness: Prepared, Heat and Serve"),
          (7, "Store: Frozen"),
          (7, "Package Quantity: 1"),
          (7, "Pre-package preparation: Raw"),
          (7, "Package type: Individual Item Multi-Serving"),
          (7, "Pizza crust type: Traditional Crust"),
          (7, "Net weight: 27.5 Ounces"),
          (7, "TCIN: 13428574"),
          (7, "UPC: 071921962395"),
          (7, "Item Number (DPCI): 288-03-0090"),
          (8, "Contains: Wheat, Milk"),
          (8, "State of Readiness: Needs to Be Fully Cooked"),
          (8, "Store: Room Temperature"),
          (8, "Package Quantity: 1"),
          (8, "Pre-package preparation: Boiled"),
          (8, "Package type: Individual Item Multi-Serving"),
          (8, "Net weight: 7.25 Ounces"),
          (8, "TCIN: 12954218"),
          (8, "UPC: 021000658831"),
          (8, "Item Number (DPCI): 212-14-0318"),
          (9, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (9, "Type of Meat: Pork"),
          (9, "Form: Sliced"),
          (9, "State of Readiness: Needs to Be Fully Cooked"),
          (9, "Store: Refrigerated"),
          (9, "Package Quantity: 1"),
          (9, "Pre-package preparation: Raw, Cured"),
          (9, "Package type: Individual Item Multi-Serving"),
          (9, "Net weight: 12 Ounces"),
          (9, "TCIN: 12945914"),
          (9, "UPC: 044700022689"),
          (9, "Item Number (DPCI): 210-10-0075"),
          (10, "Contains: Wheat, Milk, Eggs, Anchovy"),
          (10, "State of Readiness: Ready to Eat"),
          (10, "Store: Refrigerated"),
          (10, "Package Quantity: 1"),
          (10, "Pre-package preparation: Raw"),
          (10, "Package type: Individual Item Single Serving"),
          (10, "Net weight: 6.5 Ounces"),
          (10, "TCIN: 54368260"),
          (10, "UPC: 085239039151"),
          (10, "Item Number (DPCI): 211-03-0285"),
          (11, "Contains: Milk"),
          (11, "May Contain: Tree Nuts, Peanuts, Soy"),
          (11, "Form: Ball"),
          (11, "State of Readiness: Ready to Eat"),
          (11, "Store: Room Temperature"),
          (11, "Package Quantity: 14"),
          (11, "Package type: Individual Item Multi-Serving"),
          (11, "Net weight: 6 Ounces"),
          (11, "Chocolate types: Milk Chocolate, Dark Chocolate"),
          (11, "TCIN: 12943087"),
          (11, "UPC: 037466062143"),
          (11, "Item Number (DPCI): 055-02-2750"),
          (12, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (12, "Form: Pieces"),
          (12, "State of Readiness: Ready to Eat"),
          (12, "Store: Room Temperature"),
          (12, "Package Quantity: 1"),
          (12, "Package type: Individual Item Multi-Serving"),
          (12, "Net weight: 1.8 Pounds"),
          (12, "TCIN: 12945506"),
          (12, "UPC: 070462005837"),
          (12, "Item Number (DPCI): 055-02-1652"),
          (13, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (13, "State of Readiness: Prepared, Heat and Serve"),
          (13, "Store: Room Temperature"),
          (13, "Package Quantity: 1"),
          (13, "Additional items included: Does Not Include Sauce or Seasoning"),
          (13, "Package type: Individual Item Multi-Serving"),
          (13, "Net weight: 2.0 Pounds"),
          (13, "TCIN: 13474101"),
          (13, "UPC: 011152263557"),
          (13, "Item Number (DPCI): 212-30-0639"),
          (14, "Contains: Soy, Wheat, Milk"),
          (14, "May Contain: Shellfish"),
          (14, "Form: Dried, Powdered"),
          (14, "State of Readiness: Mix"),
          (14, "Store: Room Temperature"),
          (14, "Package Quantity: 1"),
          (14, "Package type: Individual Item Single Serving"),
          (14, "Soup type: Noodle Soups"),
          (14, "Net weight: 2.25 Ounces"),
          (14, "TCIN: 14568314"),
          (14, "UPC: 041789001215"),
          (14, "Item Number (DPCI): 212-18-0411"),
          (15, "Contains: Eggs"),
          (15, "Country of Origin: United States"),
          (15, "Features: Cage Free"),
          (15, "Dietary Needs: Kosher, USDA Grade A"),
          (15, "Form: Whole"),
          (15, "State of Readiness: Needs to Be Fully Cooked, Ingredient"),
          (15, "Store: Refrigerated"),
          (15, "Package Quantity: 12"),
          (15, "Pre-package preparation: Raw"),
          (15, "Package type: Individual Item Multi-Serving"),
          (15, "Egg size: Large"),
          (15, "Net weight: 24 Ounces"),
          (15, "TCIN: 21506499"),
          (15, "UPC: 715141514643"),
          (15, "Item Number (DPCI): 284-03-0018"),
          (16, "Contains: Wheat, Soy"),
          (16, "Form: Sliced"),
          (16, "State of Readiness: Ready to Eat"),
          (16, "Store: Room Temperature"),
          (16, "Package Quantity: 1"),
          (16, "Net weight: 20 Ounces"),
          (16, "TCIN: 12935779"),
          (16, "UPC: 074323090901"),
          (16, "Item Number (DPCI): 261-01-2849"),
          (17, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (17, "Form: Liquid"),
          (17, "State of Readiness: Ready to Drink"),
          (17, "Store: Room Temperature"),
          (17, "Package Quantity: 6"),
          (17, "Package type: Multi-Pack Single Servings"),
          (17, "Net weight: 101.4 fl oz (US)"),
          (17, "TCIN: 14746217"),
          (17, "UPC: 632565000098"),
          (17, "Item Number (DPCI): 271-40-0711"),
          (18, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (18, "Form: Liquid"),
          (18, "State of Readiness: Ready to Drink"),
          (18, "Store: Room Temperature"),
          (18, "Package Quantity: 12"),
          (18, "Package type: Multi-Pack Single Servings"),
          (18, "Carbonation type 1: Carbonated"),
          (18, "Net weight: 144 fl oz (US)"),
          (18, "Beverage container material: Metal"),
          (18, "TCIN: 12953464"),
          (18, "UPC: 049000028904"),
          (18, "Item Number (DPCI): 271-10-0169"),
          (19, "Size: 12 oz"),
          (19, "Alcohol Percentage: 4.6"),
          (19, "Form: Liquid"),
          (19, "State of Readiness: Ready to Drink"),
          (19, "Store: Room Temperature"),
          (19, "Package Quantity: 12"),
          (19, "Package type: Multi-Pack Single Servings"),
          (19, "Alcohol content: Alcoholic"),
          (19, "Net weight: 144.0 fl oz (US)"),
          (19, "Flavor profile: Light"),
          (19, "Beverage container material: Glass"),
          (19, "TCIN: 13418113"),
          (19, "UPC: 080660956152"),
          (19, "Item Number (DPCI): 213-06-0009"),
          (20, "Contains: Milk, Soy, Wheat"),
          (20, "Filling: No Filling"),
          (20, "State of Readiness: Ready to Eat"),
          (20, "Store: Room Temperature"),
          (20, "Package Quantity: 1"),
          (20, "Package type: Individual Item Multi-Serving"),
          (20, "Bakery topping: Chocolate Chips"),
          (20, "Cookie or bar type: Chocolate Chip Cookie"),
          (20, "Net weight: 13 Ounces"),
          (20, "TCIN: 12959729"),
          (20, "UPC: 044000032197"),
          (20, "Item Number (DPCI): 071-09-0120"),
          (21, "Dimensions (Overall): 1.5 Inches (L) x 2.4 Inches (W) x 6.7 Inches (H)"),
          (21, "Weight: .28 Pounds"),
          (21, "Material: Plastic, Metal, Zinc"),
          (21, "Power Source: Manual"),
          (21, "Battery: No Battery Used"),
          (21, "Care & Cleaning: Hand Wash"),
          (21, "TCIN: 13567840"),
          (21, "UPC: 719812817514"),
          (21, "Item Number (DPCI): 070-05-1633"),
          (22, "Dimensions (Overall): 7.2 Inches (H) x 10.5 Inches (W) x 13 Inches (D)"),
          (22, "Weight: 5.5 Pounds"),
          (22, "Capacity (Volume): 6 Cup"),
          (22, "Electronics Condition: New"),
          (22, "Appliance Capabilities: Blends"),
          (22, "Number of Speeds: 5"),
          (22, "Wattage Output: 450 watts"),
          (22, "Material: Plastic"),
          (22, "Care & Cleaning: Dishwasher-Safe Parts"),
          (22, "Warranty: 3 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (22, "TCIN: 53244839"),
          (22, "UPC: 034264492752"),
          (22, "Item Number (DPCI): 072-04-1348"),
          (23, "Dimensions (Overall): 7.75 Inches (H) x 6.75 Inches (W) x 11.5 Inches (D)"),
          (23, "Finish: Brushed"),
          (23, "Weight: 3.0 Pounds"),
          (23, "Includes: Instruction Manual"),
          (23, "Features: Adjustable Browning Levels, Cancel Option, Extra Wide Slots, Removable Crumb Tray, Bagel Option, Push Button Controls"),
          (23, "Metal Finish: Stainless Steel"),
          (23, "Safety and Security Features: Cool Touch Exterior"),
          (23, "Appliance Capabilities: Bagel Toaster"),
          (23, "Number of Slices: 2"),
          (23, "Wattage Output: 900.0 watts"),
          (23, "Material: Stainless Steel"),
          (23, "Care & Cleaning: Spot or Wipe Clean"),
          (23, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (23, "TCIN: 14024621"),
          (23, "UPC: 027045747752"),
          (23, "Item Number (DPCI): 072-09-0226"),
          (24, "Dimensions (Overall): 16.3 Inches (H) x 2.5 Inches (W) x 2.5 Inches (D)"),
          (24, "Weight: 2.44 Pounds"),
          (24, "Capacity (Volume): 24 Ounces"),
          (24, "Appliance Capabilities: Blends"),
          (24, "Number of Speeds: 3"),
          (24, "Wattage Output: 60 watts"),
          (24, "Color Name: Matte Black"),
          (24, "Material: Plastic, Metal"),
          (24, "Care & Cleaning: Dishwasher-Safe Parts"),
          (24, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (24, "TCIN: 79423724"),
          (24, "UPC: 883049544786"),
          (24, "Item Number (DPCI): 072-04-6895"),
          (25, "Dimensions (Overall): 13 Inches (H) x 11.8 Inches (W) x 11.8 Inches (D)"),
          (25, "Weight: 9 Pounds"),
          (25, "Capacity (Volume): 3.5 Liter"),
          (25, "Appliance Capabilities: Reheat, Roasts, Air Fry, Saute"),
          (25, "Wattage Output: 1200 watts"),
          (25, "Holds up to: 7 Pounds"),
          (25, "Material: Steel, Plastic"),
          (25, "Care & Cleaning: Dishwasher-Safe Parts, Spot or Wipe Clean"),
          (25, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (25, "TCIN: 54622897"),
          (25, "UPC: 816458023498"),
          (25, "Item Number (DPCI): 072-04-3076"),
          (26, "Number of Pieces: 6"),
          (26, "Dimensions (Overall): 11.25 Inches (L) x 11.25 Inches (W) x 12.75 Inches (H)"),
          (26, "Weight: 4.94 Pounds"),
          (26, "Capacity (Volume): 2 Quart"),
          (26, "Protective Qualities: Odor-Resistant"),
          (26, "Care & Cleaning: Dishwasher-Safe"),
          (26, "TCIN: 50322047"),
          (26, "UPC: 885395111759"),
          (26, "Item Number (DPCI): 072-08-0021"),
          (27, "Dimensions (Overall): 16.5 Inches (H) x 6.75 Inches (W) x 6.75 Inches (D)"),
          (27, "Weight: 9 Pounds"),
          (27, "Capacity (Volume): 64 fl oz (US)"),
          (27, "Electronics Condition: New"),
          (27, "Appliance Capabilities: Blends, Emulsifies, Purees, Liquefy, Mixes"),
          (27, "Number of Speeds: 5"),
          (27, "Wattage Output: 1200 watts"),
          (27, "Material: Plastic, Stainless Steel, Metal"),
          (27, "Care & Cleaning: Dishwasher-Safe Parts, Hand Wash"),
          (27, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (27, "TCIN: 76580528"),
          (27, "UPC: 818049021616"),
          (27, "Item Number (DPCI): 072-04-0222"),
          (28, "Number of Pieces: 4"),
          (28, "Dimensions (Overall): 4.02 Inches (L) x 4.02 Inches (W)"),
          (28, "Includes Dining: 4 Coasters"),
          (28, "Material: Acacia, Metal, Cork"),
          (28, "Care & Cleaning: Spot or Wipe Clean"),
          (28, "TCIN: 50918293"),
          (28, "UPC: 492001114273"),
          (28, "Item Number (DPCI): 200-11-1427"),
          (29, "Features: Round (shape)"),
          (29, "Number of Pieces: 2"),
          (29, "Dimensions (Overall): 3.4 Inches (H) x 6.3 Inches (W) x 4.7 Inches (D)"),
          (29, "Weight: 2.5 Pounds"),
          (29, "Baking Cooking Surface: Cast Iron"),
          (29, "Capacity (Volume): 13.28 Ounces"),
          (29, "Material: Cast Iron"),
          (29, "Care & Cleaning: Oven-Safe up to 450 Degrees, Do Not Microwave, Hand Wash"),
          (29, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (29, "TCIN: 53699714"),
          (29, "UPC: 085081463180"),
          (29, "Item Number (DPCI): 070-01-2457"),
          (30, "Features: Round (shape)"),
          (30, "Number of Pieces: 2"),
          (30, "Dimensions (Overall): 7 Inches (H) x 10.75 Inches (W) x 7.25 Inches (D)"),
          (30, "Weight: 15.0 Pounds"),
          (30, "Baking Cooking Surface: Porcelain"),
          (30, "Handle Material: Cast Iron"),
          (30, "Lid Material: Cast Iron"),
          (30, "Capacity (Volume): 6 Quart"),
          (30, "Protective Qualities: Corrosion-Resistant, Heat-Resistant, Odor-Resistant, Rust-Resistant, Tarnish-Resistant, Warp-Proof, Water-Resistant, Waterproof"),
          (30, "Material: Cast Iron"),
          (30, "Care & Cleaning: Clean With Brush, Do Not Microwave, Oven-Safe up to 500 Degrees"),
          (30, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (30, "TCIN: 10514667"),
          (30, "UPC: 075536462431"),
          (30, "Item Number (DPCI): 070-01-0109"),
          (31, "Number of Pieces: 2"),
          (31, "Weight: 5.8 Pounds"),
          (31, "Baking Cooking Surface: Nonstick"),
          (31, "Handle Material: Stainless Steel"),
          (31, "Lid Material: No Lid"),
          (31, "Capacity (Volume): 10 cubic-in"),
          (31, "Pot or pan diameter: 8 Inches"),
          (31, "Cooktop compatibility: Gas, Smooth Surface Non Induction"),
          (31, "Material: exterior surface: Hard Anodized Aluminum"),
          (31, "Care & Cleaning: Hand Wash"),
          (31, "Warranty: Lifetime Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (31, "TCIN: 78062809"),
          (31, "UPC: 016853071180"),
          (31, "Item Number (DPCI): 070-07-3043"),
          (32, "Number of Pieces: 10"),
          (32, "Baking Cooking Surface: Nonstick"),
          (32, "Handle Material: Stainless Steel"),
          (32, "Lid Material: Tempered Glass"),
          (32, "Includes: 6 Quart Stockpot With Lid, 3 qt. Saute Pan With Lid, 10"),
          (32, "Piece 1 pot or pan diameter: 8 Inches"),
          (32, "Piece 2 pot or pan diameter: 10 Inches"),
          (32, "Cooktop compatibility: Gas"),
          (32, "Material: exterior surface: Hard Anodized Aluminum"),
          (32, "Care & Cleaning: Dishwasher-Safe"),
          (32, "Warranty: Lifetime Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (32, "TCIN: 78062797"),
          (32, "UPC: 016853071111"),
          (32, "Item Number (DPCI): 070-07-0005"),
          (33, "Features: Round (shape)"),
          (33, "Number of Pieces: 1"),
          (33, "Dimensions (Overall): 3.5 Inches (H) x 4.25 Inches (W) x 4.25 Inches (D)"),
          (33, "Finish: Glazed"),
          (33, "Capacity (Volume): 10.79 Ounces"),
          (33, "Material: Stoneware"),
          (33, "Care & Cleaning: Hand Wash"),
          (33, "TCIN: 52590343"),
          (33, "UPC: 493240310266"),
          (33, "Item Number (DPCI): 324-03-1026"),
          (34, "Features: Round (shape)"),
          (34, "Number of Pieces: 4"),
          (34, "Dimensions (Overall): 1.77 Inches (H) x 4.02 Inches (W) x 4.02 Inches (D)"),
          (34, "Capacity (Volume): 150 ml"),
          (34, "Material: Acacia"),
          (34, "Care & Cleaning: Hand Wash"),
          (34, "TCIN: 21512522"),
          (34, "UPC: 492001110664"),
          (34, "Item Number (DPCI): 200-11-1066"),
          (35, "Dimensions (Overall): 9.25 Inches (L) x 5.75 Inches (W) x .75 Inches (H)"),
          (35, "Weight: 3.55 Pounds"),
          (35, "Features: Lightweight"),
          (35, "Material: Marble, Stainless Steel, Wood"),
          (35, "Care & Cleaning: Spot or Wipe Clean"),
          (35, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (35, "TCIN: 52262892"),
          (35, "UPC: 492001118240"),
          (35, "Item Number (DPCI): 200-11-1824"),
          (36, "Number of Pieces: 4"),
          (36, "Blade Material: 18/8 Stainless Steel"),
          (36, "Cutlery Construction: Molded"),
          (36, "Care & Cleaning: Spot or Wipe Clean"),
          (36, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (36, "TCIN: 52262948"),
          (36, "UPC: 492001118301"),
          (36, "Item Number (DPCI): 200-11-1830"),
          (37, "Number of Pieces: 15"),
          (37, "Includes: Utility Knife, Knife Block, Paring Knife, Shears, Santoku Knife, Slicer, Sharpening Steel, Bread Knife, Chef Knife"),
          (37, "Features: Serrated Blade"),
          (37, "Blade Material: Stainless Steel"),
          (37, "Handle Material: Stainless Steel"),
          (37, "Cutlery Construction: Stamped"),
          (37, "Care & Cleaning: Hand Wash"),
          (37, "Warranty: Lifetime Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (37, "TCIN: 16676965"),
          (37, "UPC: 045908065980"),
          (37, "Item Number (DPCI): 070-08-0598"),
          (38, "Number of Pieces: 20"),
          (38, "Piece 1 Type: Dinner Fork"),
          (38, "Piece 1 Dimensions: 7.8 Inches (L)"),
          (38, "Piece 2 Type: Dinner Knife"),
          (38, "Piece 2 Dimensions: 8.8 Inches (L)"),
          (38, "Piece 3 Type: Dinner Spoon"),
          (38, "Piece 3 Dimensions: 7.6 Inches (L)"),
          (38, "Piece 4 Type: Salad Fork"),
          (38, "Piece 4 Dimensions: 7 Inches (L)"),
          (38, "Piece 5 Type: Teaspoon"),
          (38, "Piece 5 Dimensions: 6.9 Inches (L)"),
          (38, "Finish: Satin"),
          (38, "Handle Material: 18/0 Stainless Steel"),
          (38, "Material: 18/0 Stainless Steel"),
          (38, "Features Dining: Serrated Blade"),
          (38, "Includes Dining: 4 Teaspoons, 4 Salad Forks, 4 Dinner Spoons, 4 Dinner Knives, 4 Dinner Forks"),
          (38, "Service For: 4"),
          (38, "Care & Cleaning: Dishwasher-Safe, Hand Wash, Do Not Use Lemon or Acidic Detergent"),
          (38, "TCIN: 49103712"),
          (38, "UPC: 492000705953"),
          (38, "Item Number (DPCI): 200-07-0595"),
          (39, "Dimensions (Overall): 15.25 Inches (H) x 10.75 Inches (W) x 11.5 Inches (D)"),
          (39, "Weight: 1.76 Pounds"),
          (39, "Mount Type: Free Standing"),
          (39, "Material: Steel"),
          (39, "Battery: No Battery Used"),
          (39, "Care & Cleaning: Spot or Wipe Clean"),
          (39, "TCIN: 51239228"),
          (39, "UPC: 010591045175"),
          (39, "Item Number (DPCI): 200-10-0740"),
          (40, "Number of Pieces: 12"),
          (40, "Piece 1 Type: Cup, Capacity: 16.4 Ounces"),
          (40, "Piece 1 Dimensions: 6.0 Inches (H) x 3 Inches (W)"),
          (40, "Piece 2 Type: Cup, Capacity: 12.2 Ounces"),
          (40, "Piece 2 Dimensions: 4 Inches (H) x 3.88 Inches (W)"),
          (40, "Finish: Faceted"),
          (40, "Used For: Cold Beverages"),
          (40, "Features Dining: Lead Free"),
          (40, "Includes Dining: 6 Tall Tumblers, 6 Short Tumblers"),
          (40, "Service For: 6"),
          (40, "Material: Glass"),
          (40, "Care & Cleaning: Dishwasher-Safe"),
          (40, "TCIN: 14646183"),
          (40, "UPC: 031009482092"),
          (40, "Item Number (DPCI): 200-03-0239"),
          (41, "Electronics Condition: New"),
          (41, "Aspect Ratio: 16:9 Aspect Ratio"),
          (41, "Contrast Ratio: 2000000:1 Dynamic Contrast Ratio"),
          (41, "Native screen refresh rate: 60 Hz"),
          (41, "VESA Mounting Standard: 200x200"),
          (41, "Video Resolution: 4K"),
          (41, "Wireless Technology: Wi-Fi"),
          (41, "Backlight type: LED Edge-Lit"),
          (41, "Signal Type: ATSC"),
          (41, "Model name: QN43LS03T"),
          (41, "Screen Size: 43 inches"),
          (41, "TCIN: 80442121"),
          (42, "Dimensions (Overall): 13.6 Inches (H) x 21.9 Inches (W) x 2.1 Inches (D)"),
          (42, "Weight: 7.5 Pounds"),
          (42, "Includes: Remote Control, User Manual, Power cord, Remote Control Batteries"),
          (42, "Electronics Condition: New"),
          (42, "Electronics Features: Gaming Mode, Sleep Timer"),
          (42, "Model #: 24LF454B"),
          (42, "Signal Type: ATSC, NTSC"),
          (42, "Aspect Ratio: 16:9 Aspect Ratio"),
          (42, "Contrast Ratio: 1000:1 Dynamic Contrast Ratio"),
          (42, "Video Resolution: 720p"),
          (42, "Native screen refresh rate: 60 Hz"),
          (42, "Screen Size: 24 Inches"),
          (42, "App compatibility: Netflix, Amazon Video, Hulu"),
          (42, "VESA Mounting Standard: 75x75"),
          (42, "Product Depth with Stand: 5.8 Inches"),
          (42, "Product Height with Stand: 15.2 Inches"),
          (42, "Product Width with Stand: 21.9 Inches"),
          (42, "Backlight type: LED Edge-Lit"),
          (42, "Smart platform: LG webOS"),
          (42, "Number of HDMI ports: 1"),
          (42, "Battery: 2 AAA Alkaline, Required, Included"),
          (42, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (42, "TCIN: 15193616"),
          (42, "UPC: 719192609211"),
          (42, "Item Number (DPCI): 008-09-0420"),
          (43, "Dimensions (Overall): 20.4 Inches (H) x 35.51 Inches (W) x 2.55 Inches (D)"),
          (43, "Weight: 14.55 Pounds"),
          (43, "Includes: Remote Control, Remote Control Batteries"),
          (43, "Electronics Condition: New"),
          (43, "Electronics Features: Wi-Fi, Streaming Capability, Tv Apps, Smart TV"),
          (43, "Model #: D40f-G9"),
          (43, "Signal Type: ATSC"),
          (43, "Aspect Ratio: 16:9 Aspect Ratio"),
          (43, "Contrast Ratio: 200000:1 Dynamic Contrast Ratio"),
          (43, "Video Resolution: 1080p"),
          (43, "Wireless Technology: Wi-Fi"),
          (43, "Screen Size: 39.5 Inches"),
          (43, "App compatibility: Netflix, Hulu, Disney+, Pandora, YouTube"),
          (43, "VESA Mounting Standard: 200x200"),
          (43, "Product Depth with Stand: 8.36 Inches"),
          (43, "Product Height with Stand: 22.59 Inches"),
          (43, "Product Width with Stand: 35.51 Inches"),
          (43, "Backlight type: LED Full Array"),
          (43, "Smart platform: VIZIO SmartCast"),
          (43, "Voice assistant built-in: Google Assistant"),
          (43, "Number of HDMI ports: 2"),
          (43, "Battery: 2 AAA Alkaline, Required, Included"),
          (43, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (43, "TCIN: 53855744"),
          (43, "UPC: 845226016981"),
          (43, "Item Number (DPCI): 008-09-0034"),
          (44, "Weight: .19 ounces"),
          (44, "Product Model: Apple AirPods Pro"),
          (44, "Ear Cushion Material: Silicone"),
          (44, "Battery Charge Life: Up to 5 Hours"),
          (44, "Estimated Charge Time: 3 hours"),
          (44, "Electronics Features: Noise Canceling, True Wireless, Wireless, Water-Resistant"),
          (44, "Operating System Compatibility: Apple iOS"),
          (44, "Connectivity: No Wired Connection Ports"),
          (44, "Wireless Technology: Bluetooth"),
          (44, "Package Quantity: 1"),
          (44, "Maximum Operating Range: 20 Feet"),
          (44, "Voice assistant built-in: Siri"),
          (44, "Battery: 1 Non-Universal Lithium Ion, Required, Included"),
          (44, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (44, "TCIN: 54191101"),
          (44, "UPC: 190199246850"),
          (44, "Item Number (DPCI): 057-10-0164"),
          (45, "Weight: 2.91 Pounds"),
          (45, "Ear Cushion Material: Leatherette"),
          (45, "Includes: Carrying Case, Audio Cable, USB Cable"),
          (45, "Battery Charge Life: Up to 20 Hours"),
          (45, "Electronics Condition: New"),
          (45, "Estimated Charge Time: 2.5 hours"),
          (45, "Cable/Cord Length: 2.5 Millimeter"),
          (45, "Electronics Features: Lightweight Design, Volume Control, Mute Controls, Noise Canceling, Multi-Function Button, Foldable Design, Detachable Cable, Call Functionality, Built-In Microphone, Adjustable Headband, Wireless"),
          (45, "Operating System Compatibility: Apple iOS, Apple iPadOS, Android"),
          (45, "Connectivity: Micro USB"),
          (45, "Wireless Technology: Bluetooth"),
          (45, "Package Quantity: 1"),
          (45, "Maximum Operating Range: 20 Feet"),
          (45, "Voice assistant built-in: Siri, Alexa, Google Assistant"),
          (45, "Battery: 1 Non-Universal Lithium Ion, Required, Included"),
          (45, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (45, "TCIN: 52791828"),
          (45, "UPC: 017817770613"),
          (45, "Item Number (DPCI): 008-07-0162"),
          (46, "Weight: .5 ounces"),
          (46, "Ear Cushion Material: Silicone"),
          (46, "Includes: 3 Ear Adapters (S/M/L), USB Cable, Charging Station"),
          (46, "Battery Charge Life: Up to 5 Hours"),
          (46, "Estimated Charge Time: 3 hours"),
          (46, "Electronics Features: True Wireless, Built-In Microphone, Call Functionality, Wireless, Lightweight Design"),
          (46, "Operating System Compatibility: Android, Apple iOS"),
          (46, "Connectivity: Micro USB"),
          (46, "Wireless Technology: Bluetooth"),
          (46, "Package Quantity: 1"),
          (46, "Maximum Operating Range: 30 Feet"),
          (46, "Battery: 1 Non-Universal Lithium Ion, Required, Included"),
          (46, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (46, "TCIN: 52792270"),
          (46, "UPC: 017817748018"),
          (46, "Item Number (DPCI): 008-07-0176"),
          (47, "Weight: 1 ounces"),
          (47, "Ear Cushion Material: Leatherette"),
          (47, "Estimated Charge Time: 2.5 hours"),
          (47, "Electronics Features: Wireless"),
          (47, "Connectivity: No Wired Connection Ports"),
          (47, "Wireless Technology: Bluetooth"),
          (47, "Package Quantity: 1"),
          (47, "Battery: 1 Lithium Ion, Required, Included"),
          (47, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (47, "TCIN: 79466026"),
          (47, "UPC: 190199246386"),
          (47, "Item Number (DPCI): 008-07-1842"),
          (48, "Dimensions (Overall): 13.9 Inches (H) x 16.82 Inches (W) x 4.02 Inches (D)"),
          (48, "Weight: 8.25 Pounds"),
          (48, "Model Compatibility: PlayStation 4"),
          (48, "Includes: Dual Shock Controller, User Manual, AC Power Adapter"),
          (48, "Electronics Features: Functions as Blu-Ray Disc Player, Functions as Dvd Player"),
          (48, "Connectivity: HDMI, USB"),
          (48, "Data storage type: HDD"),
          (48, "Data storage capacity: 1 TB"),
          (48, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (48, "TCIN: 52416598"),
          (48, "UPC: 711719521112"),
          (48, "Item Number (DPCI): 207-33-0111"),
          (49, "Model Compatibility: PlayStation 4"),
          (49, "ESRB Content Description: Suitable_for_all_users"),
          (49, "Electronics Condition: New"),
          (49, "Video Game Genre: Sports"),
          (49, "Software Format: Blu-ray"),
          (49, "ESRB Age Rating: E - Everyone"),
          (49, "Battery: No Battery Used"),
          (49, "TCIN: 80626062"),
          (49, "UPC: 710425576935"),
          (49, "Item Number (DPCI): 207-34-0534"),
          (50, "Model Compatibility: PlayStation 4"),
          (50, "ESRB Content Description: Strong language, intense violence, blood and gore"),
          (50, "Also Available On: Xbox One"),
          (50, "Electronics Condition: New"),
          (50, "Video Game Genre: Shooter"),
          (50, "Software Format: Blu-ray"),
          (50, "ESRB Age Rating: M - Mature"),
          (50, "Battery: No Battery Used"),
          (50, "TCIN: 76615858"),
          (50, "UPC: 047875884359"),
          (50, "Item Number (DPCI): 207-34-0389"),
          (51, "Model Compatibility: PlayStation 4"),
          (51, "ESRB Content Description: Blood and gore, intense violence, Nudity, strong language, Strong Sexual Content, use of drugs and alcohol"),
          (51, "Also Available On: Xbox One"),
          (51, "Electronics Condition: New"),
          (51, "Video Game Genre: Action/Adventure"),
          (51, "Software Format: Blu-ray"),
          (51, "ESRB Age Rating: M - Mature"),
          (51, "Battery: No Battery Used"),
          (51, "TCIN: 77332707"),
          (51, "UPC: 883929689613"),
          (51, "Item Number (DPCI): 207-34-0404"),
          (52, "Model Compatibility: PlayStation 4"),
          (52, "ESRB Content Description: Language, mild blood, Violence"),
          (52, "Also Available On: Xbox One"),
          (52, "Electronics Condition: New"),
          (52, "Video Game Genre: Action/Adventure"),
          (52, "Software Format: Blu-ray"),
          (52, "ESRB Age Rating: T - Teen"),
          (52, "Battery: No Battery Used"),
          (52, "TCIN: 76835672"),
          (52, "UPC: 662248922775"),
          (52, "Item Number (DPCI): 207-34-0402"),
          (53, "TCIN: 79798727"),
          (54, "Dimensions (Overall): 17.94 Inches (H) x 24.45 Inches (W) x 7.66 Inches (D)"),
          (54, "Weight: 8.35 Pounds"),
          (54, "Number of USB ports: 0"),
          (54, "Electronics Features: Adjustable Tilt, Adjustable Height, High Definition Display, Brightness Control"),
          (54, "Aspect Ratio: 16:9 Aspect Ratio"),
          (54, "Response Time: 14ms Response Time"),
          (54, "Contrast Ratio: 1000:1 Static Contrast Ratio"),
          (54, "Maximum Resolution: 1920 x 1080"),
          (54, "Connectivity: VGA, HDMI"),
          (54, "Native screen refresh rate: 60 Hz"),
          (54, "Brightness(cd/m2): 250"),
          (54, "Screen Size: 27 Inches"),
          (54, "Number of DVI ports: 0"),
          (54, "Number of VGA Ports: 1"),
          (54, "Viewing Angles: 178 (H) / 178 (V) Degrees"),
          (54, "VESA Mounting Standard: No Mounting"),
          (54, "Number of HDMI ports: 2"),
          (54, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (54, "TCIN: 76159301"),
          (54, "UPC: 889899859612"),
          (54, "Item Number (DPCI): 056-00-0044"),
          (55, "Dimensions (Overall): 16.1 Inches (H) x 21.25 Inches (W) x 7.23 Inches (D)"),
          (55, "Weight: 6.7 Pounds"),
          (55, "Number of USB ports: 0"),
          (55, "Electronics Features: Adjustable Tilt, Anti-Glare Coating"),
          (55, "Aspect Ratio: 16:9 Aspect Ratio"),
          (55, "Response Time: 6ms Response Time"),
          (55, "Contrast Ratio: 1000:1 Static Contrast Ratio"),
          (55, "Maximum Resolution: 1920 x 1080"),
          (55, "Connectivity: VGA, HDMI"),
          (55, "Native screen refresh rate: 60 Hz"),
          (55, "Brightness(cd/m2): 250"),
          (55, "Screen Size: 23.8 Inches"),
          (55, "Number of DVI ports: 0"),
          (55, "Number of VGA Ports: 1"),
          (55, "Viewing Angles: 178 (H) / 178 (V) Degrees"),
          (55, "VESA Mounting Standard: No Mounting"),
          (55, "Number of HDMI ports: 1"),
          (55, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (55, "TCIN: 76159300"),
          (55, "UPC: 190781611868"),
          (55, "Item Number (DPCI): 056-00-0032"),
          (56, "Dimensions (Overall): 5.5 inches (L) x 5.5 inches (W) x 1 inches (H)"),
          (56, "Size: 140mm"),
          (56, "Weight: 3.1 pounds"),
          (56, "Model name: CL-F057-PL14SW-A"),
          (56, "Package Quantity: 5"),
          (56, "Warranty: 3 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (56, "TCIN: 78790068"),
          (57, "Specifications"),
          (57, "Dimensions (Overall): 5.5 inches (L) x 5.5 inches (W) x .07 inches (H)"),
          (57, "Weight: 4.05 pounds"),
          (57, "Model name: AC-004-ON1NAN-A1"),
          (57, "Package Quantity: 1"),
          (57, "Warranty: 2 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (57, "TCIN: 78857847"),
          (58, "Dimensions (Overall): 5.9 Inches (H) x 31.5 Inches (W) x 8.7 Inches (D)"),
          (58, "Weight: 9.5 Pounds"),
          (58, "Electronics Features: Wall Mountable, Wireless"),
          (58, "Connectivity: 3.5mm Jack, Optical Audio, USB"),
          (58, "Number of channels: 2.1 speaker channels"),
          (58, "Battery: No Battery Used"),
          (58, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (58, "TCIN: 76485335"),
          (58, "UPC: 846042011594"),
          (58, "Item Number (DPCI): 008-02-4093"),
          (59, "Dimensions (Overall): .6 Inches (H) x 1.2 Inches (W) x 4.3 Inches (D)"),
          (59, "Weight: .12 Pounds"),
          (59, "Connectivity: HDMI"),
          (59, "Video Resolution: 4K"),
          (59, "System RAM: 1.5 gigabyte"),
          (59, "App compatibility: Amazon Video"),
          (59, "Data storage capacity: 8 GB"),
          (59, "Battery: No Battery Used"),
          (59, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (59, "TCIN: 54188026"),
          (59, "UPC: 841667144719"),
          (59, "Item Number (DPCI): 008-06-0069"),
          (60, "Dimensions (Overall): .45 Inches (H) x .8 Inches (W) x 3.7 Inches (D)"),
          (60, "Weight: .85 ounces"),
          (60, "Includes: Remote Control Batteries, Quick Start Guide, Voice Remote, AC Power Adapter, Wireless Receiver, USB Cable"),
          (60, "Connectivity: HDMI"),
          (60, "Video Resolution: 4K"),
          (60, "System RAM: 512 megabyte"),
          (60, "App compatibility: Netflix, HBO Go, YouTube, HBO Now, PBS, Twitter, Hulu, Sling TV, Amazon Video, Showtime, VUDU"),
          (60, "Data storage capacity: 0"),
          (60, "Battery: 2 AAA Alkaline, Required, Included"),
          (60, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (60, "TCIN: 52709600"),
          (60, "UPC: 829610001951"),
          (60, "Item Number (DPCI): 008-06-0065"),
          (61, "Number of Pieces: 8"),
          (61, "Dimensions (Overall): 5 Inches (H) x 4.75 Inches (W) x 8 Inches (D)"),
          (61, "Suggested Age: 18 Months and Up"),
          (61, "Weight: 1.15 Pounds"),
          (61, "Material: Wood"),
          (61, "Assembly Details: No Assembly Required"),
          (61, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (61, "Educational Focus: Fine Motor Skills"),
          (61, "Battery: No Battery Used"),
          (61, "Care & Cleaning: Spot or Wipe Clean"),
          (61, "TCIN: 79896740"),
          (61, "UPC: 4020972058072"),
          (61, "Item Number (DPCI): 087-08-8367"),
          (62, "Dimensions (Overall): 9.13 Inches (H) x 5.98 Inches (W) x 2.52 Inches (D)"),
          (62, "Suggested Age: 8 Years and Up"),
          (62, "Weight: .4 Pounds"),
          (62, "Material: ABS (Acrylonitrile Butadiene Styrene)"),
          (62, "Number of Figures: 1"),
          (62, "Doll Theme: Robots"),
          (62, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (62, "Articulation: 5 Points of Articulation"),
          (62, "Battery: No Battery Used"),
          (62, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (62, "TCIN: 79416594"),
          (62, "UPC: 5010993705207"),
          (62, "Item Number (DPCI): 087-16-8197"),
          (63, "Dimensions (Overall): 12.5 Inches (H) x 11.5 Inches (W) x 8.5 Inches (D)"),
          (63, "Suggested Age: 18 Years and Up"),
          (63, "Weight: 1.27 Pounds"),
          (63, "Material: Polyvinyl Chloride (PVC)"),
          (63, "Number of Figures: 1"),
          (63, "Doll Theme: Superheroes and Comics"),
          (63, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (63, "Articulation: 5 Points of Articulation"),
          (63, "Battery: 4 C Alkaline, Required, Not Included"),
          (63, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (63, "TCIN: 79661916"),
          (63, "UPC: 630509864935"),
          (63, "Item Number (DPCI): 087-16-2023"),
          (64, "Dimensions (Overall): 18 Inches (H) x 7 Inches (W) x 9 Inches (D)"),
          (64, "Suggested Age: 6 Years and Up"),
          (64, "Weight: 1.94 Pounds"),
          (64, "Material: Plastic"),
          (64, "Number of Figures: 0"),
          (64, "Doll Theme: TV and Movies"),
          (64, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (64, "Articulation: No Articulation"),
          (64, "Battery: No Battery Used"),
          (64, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (64, "TCIN: 79416582"),
          (64, "UPC: 887961872569"),
          (64, "Item Number (DPCI): 087-16-8938"),
          (65, "Dimensions (Overall): 7 Inches (H) x 3 Inches (W) x 1.5 Inches (D)"),
          (65, "Suggested Age: 17 Years and Up"),
          (65, "Weight: .45 Pounds"),
          (65, "Material: Plastic"),
          (65, "Number of Figures: 1"),
          (65, "Doll Theme: TV and Movies"),
          (65, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (65, "Articulation: No Articulation"),
          (65, "Battery: No Battery Used"),
          (65, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (65, "TCIN: 54198117"),
          (65, "UPC: 634482454671"),
          (65, "Item Number (DPCI): 323-07-0215"),
          (66, "Hair Type: No Hair"),
          (66, "Dimensions (Overall): 9.5 Inches (H) x 4 Inches (W) x 10.5 Inches (D)"),
          (66, "Suggested Age: 2 Years and Up"),
          (66, "Weight: .7 Pounds"),
          (66, "Material: Plastic"),
          (66, "Doll Theme: Baby and Infant"),
          (66, "Skin Tone: Medium"),
          (66, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (66, "Doll gender: Girl"),
          (66, "Hair Color: No Hair"),
          (66, "Articulation: Articulated"),
          (66, "Doll eye color: Varies"),
          (66, "Battery: No Battery Used"),
          (66, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (66, "TCIN: 76152458"),
          (66, "UPC: 889933387279"),
          (66, "Item Number (DPCI): 086-04-0639"),
          (67, "Hair Type: No Hair"),
          (67, "Dimensions (Overall): 10 Inches (H) x 9.25 Inches (W) x 7.8 Inches (D)"),
          (67, "Suggested Age: 3 Years and Up"),
          (67, "Weight: 2.6 Pounds"),
          (67, "Material: Plastic"),
          (67, "Includes: Doll Accessories"),
          (67, "Doll Theme: Baby and Infant"),
          (67, "Skin Tone: Light"),
          (67, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (67, "Doll gender: Girl"),
          (67, "Hair Color: Blue"),
          (67, "Articulation: Articulated"),
          (67, "Doll eye color: Blue"),
          (67, "Battery: 3 AA Alkaline, Required, Included"),
          (67, "Warranty: No Applicable Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (67, "TCIN: 76152516"),
          (67, "UPC: 8421134093072"),
          (67, "Item Number (DPCI): 086-04-1156"),
          (68, "Suggested Age: 8 Years and Up"),
          (68, "Material: Paper, Plastic"),
          (68, "Includes: Figures, Instruction Guide, Tweezers"),
          (68, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (68, "Number of Players: 1 or More Players"),
          (68, "Educational Focus: Science, Biology"),
          (68, "Battery: No Battery Used"),
          (68, "TCIN: 53219845"),
          (68, "UPC: 834509000540"),
          (68, "Item Number (DPCI): 086-00-2800"),
          (69, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (69, "Suggested Age: 6 Years and Up"),
          (69, "Material: Paper, Plastic"),
          (69, "Includes: Storage Bag, Instruction Guide, Candy Making Ingredients"),
          (69, "Number of Players: 1 Player"),
          (69, "Educational Focus: Science"),
          (69, "Battery: No Battery Used"),
          (69, "TCIN: 54370021"),
          (69, "UPC: 814743013469"),
          (69, "Item Number (DPCI): 086-00-2864"),
          (70, "Contains: Does Not Contain Any of the 8 Major Allergens"),
          (70, "Suggested Age: 6 Years and Up"),
          (70, "Material: Plastic"),
          (70, "Includes: Stickers, Rocks, jar, Figures"),
          (70, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (70, "Number of Players: 1 Player"),
          (70, "Educational Focus: Creative Thinking, Science"),
          (70, "Battery: No Battery Used"),
          (70, "TCIN: 16710285"),
          (70, "UPC: 092633113707"),
          (70, "Item Number (DPCI): 081-04-3823"),
          (71, "Number of Pieces: 7"),
          (71, "Suggested Age: 18-24 Months"),
          (71, "Weight: 3.3 Pounds"),
          (71, "Material: Plastic"),
          (71, "Includes: Tambourine, Castanets"),
          (71, "Educational Focus: Large Motor Skills, Social Skills, Music"),
          (71, "Battery: No Battery Used"),
          (71, "TCIN: 12026425"),
          (71, "UPC: 062243220874"),
          (71, "Item Number (DPCI): 204-06-0423"),
          (72, "Suggested Age: 2-5 Years"),
          (72, "Weight: 1.76 Pounds"),
          (72, "Material: Plastic"),
          (72, "Educational Focus: Shapes and Colors, Social Skills, Creative Thinking"),
          (72, "Battery: 4 AA Alkaline, Required, Included"),
          (72, "Warranty: 90 Day Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (72, "TCIN: 76151295"),
          (72, "UPC: 3417765187001"),
          (72, "Item Number (DPCI): 204-10-1102"),
          (73, "Suggested Age: 3 Years and Up"),
          (73, "Material: Plastic"),
          (73, "Includes: Instruction Guide"),
          (73, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (73, "Number of Players: 2 Players"),
          (73, "Educational Focus: Creative Thinking"),
          (73, "Power Source: Battery-Powered"),
          (73, "Battery: 4 AAA Alkaline, Required, Not Included"),
          (73, "TCIN: 76439767"),
          (73, "UPC: 092298944739"),
          (73, "Item Number (DPCI): 087-16-1012"),
          (74, "Suggested Age: 3 Years and Up"),
          (74, "Material: Plastic"),
          (74, "Includes: Storage Case"),
          (74, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (74, "Number of Players: 1 Player"),
          (74, "Educational Focus: Creative Thinking"),
          (74, "Power Source: Battery-Powered"),
          (74, "Battery: 3 AG3/LR41 Alkaline, Required, Included"),
          (74, "TCIN: 79405836"),
          (74, "UPC: 886144541315"),
          (74, "Item Number (DPCI): 087-08-0091"),
          (75, "Suggested Age: 8 Years and Up"),
          (75, "Includes: Instruction Guide"),
          (75, "CPSC Choking Hazard Warnings: Choking_hazard_contains_small_ball, choking_hazard_small_parts"),
          (75, "Number of Players: 1 Player"),
          (75, "Educational Focus: Large Motor Skills, Creative Thinking"),
          (75, "TCIN: 546700"),
          (75, "UPC: 000772011709"),
          (75, "Item Number (DPCI): 204-06-0147"),
          (76, "Dimensions (Overall): 49 Inches (H) x 35 Inches (W) x 9.5 Inches (D)"),
          (76, "Material: Plastic (Frame)"),
          (76, "Suggested Age: 2 Years and Up"),
          (76, "Material: Plastic"),
          (76, "Assembly Details: Adult Assembly Required, Tools Not Provided"),
          (76, "Battery: No Battery Used"),
          (76, "TCIN: 77401899"),
          (76, "UPC: 050743651717"),
          (76, "Item Number (DPCI): 091-15-0653"),
          (77, "Dimensions (Overall): 57.4 Inches (H) x 54.3 Inches (W) x 53.9 Inches (D)"),
          (77, "Material: Wood, Cedar (Frame)"),
          (77, "Suggested Age: 3-10 Years"),
          (77, "Material: Plastic, Metal, Wood"),
          (77, "Assembly Details: Adult Assembly Required, Tools Not Provided"),
          (77, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (77, "Battery: No Battery Used"),
          (77, "TCIN: 76385602"),
          (77, "UPC: 706943659038"),
          (77, "Item Number (DPCI): 091-15-1855"),
          (78, "Dimensions (Overall): 46.0 Inches (H) x 39.0 Inches (W)"),
          (78, "Material: Cardboard (Frame)"),
          (78, "Suggested Age: 3 Years and Up"),
          (78, "Material: Cardboard"),
          (78, "Includes: Steering Wheel, Instructions"),
          (78, "Battery: No Battery Used"),
          (78, "TCIN: 52966980"),
          (78, "UPC: 000772055109"),
          (78, "Item Number (DPCI): 204-06-3310"),
          (79, "Number of Pieces: 25"),
          (79, "Dimensions (Overall): 12.83 Inches (H) x 12.0 Inches (W) x 16 Inches (D)"),
          (79, "Suggested Age: 1 Year"),
          (79, "Weight: 4.31 Pounds"),
          (79, "Material: Plastic"),
          (79, "Includes: Blocks"),
          (79, "Educational Focus: Large Motor Skills"),
          (79, "Battery: No Battery Used"),
          (79, "TCIN: 15536929"),
          (79, "UPC: 065541078451"),
          (79, "Item Number (DPCI): 204-07-0944"),
          (80, "Suggested Age: 2 Years and Up"),
          (80, "CPSC Choking Hazard Warnings: Choking_hazard_small_parts"),
          (80, "TCIN: 79342028"),
          (81, "Scent: Mint, Lemon"),
          (81, "Product Warning: Keep out of eyes, keep out of reach of children"),
          (81, "Capacity (Volume): 28 fl oz (US)"),
          (81, "Product Form: Liquid"),
          (81, "Sustainability Claims: Cruelty-Free"),
          (81, "Recommended Surface Application: Glass"),
          (81, "Product Results: Cleaner"),
          (81, "Recommended Product Application: Windows, Mirrors"),
          (81, "TCIN: 75663185"),
          (81, "UPC: 829576020966"),
          (81, "Item Number (DPCI): 003-02-0787"),
          (82, "Scent: Unscented"),
          (82, "Product Warning: Keep out of eyes, keep out of reach of children, keep out of reach of animals"),
          (82, "Capacity (Volume): 26 fl oz (US)"),
          (82, "Product Form: Liquid"),
          (82, "Recommended Surface Application: Glass"),
          (82, "Product Results: Cleaner"),
          (82, "Recommended Product Application: Windows"),
          (82, "TCIN: 75666309"),
          (82, "UPC: 119800002036"),
          (82, "Item Number (DPCI): 003-05-4986"),
          (83, "Scent: Lavender"),
          (83, "Health Facts: Animal By-Product-Free, Dye-Free, Formaldehyde Donor-Free, Paraben-Free, Petroleum-Free, Phthalate-Free, Contains Naturally Derived Ingredients, Aluminum-Free"),
          (83, "Product Warning: Keep out of reach of children, keep out of reach of animals, keep out of eyes, flush immediately if product enters eyes"),
          (83, "Capacity (Volume): 24 Ounces"),
          (83, "Product Form: Liquid"),
          (83, "Sustainability Claims: Plant-Based, Cruelty-Free, Not Tested on Animals, Biodegradable, Recyclable, Post-Consumer Recycled Material"),
          (83, "Recommended Surface Application: Glass, windows, Multi-Surface"),
          (83, "Product Results: Cleaner, Streak Free Glass"),
          (83, "Recommended Product Application: Mirrors, Multi-Purpose"),
          (83, "TCIN: 52329231"),
          (83, "UPC: 808124111608"),
          (83, "Item Number (DPCI): 003-02-0608"),
          (84, "Scent: Sea Minerals"),
          (84, "Health Facts: Contains Naturally Derived Ingredients, Phthalate-Free, Paraben-Free, Aluminum-Free, Dye-Free"),
          (84, "Product Warning: Keep out of reach of children, drink water if product is swallowed, flush immediately if product enters eyes"),
          (84, "Capacity (Volume): 23 fl oz (US)"),
          (84, "Product Form: Liquid"),
          (84, "Recommended Surface Application: Glass"),
          (84, "Product Results: Cleaner, Removes Dirt, Removes Grease, Removes Finger Prints, Removes Dust"),
          (84, "Recommended Product Application: Mirrors, windows"),
          (84, "TCIN: 75662671"),
          (84, "UPC: 732913447121"),
          (84, "Item Number (DPCI): 003-02-8013"),
          (85, "Scent: Citrus"),
          (85, "Health Facts: Phosphate-Free, Hypoallergenic, Non-Toxic, Paraben-Free, Phthalate-Free"),
          (85, "Product Warning: Keep out of reach of children"),
          (85, "Capacity (Volume): 28 Ounces"),
          (85, "Product Form: Liquid"),
          (85, "Sustainability Claims: Recyclable, Contains Recycled Content, Not Tested on Animals"),
          (85, "Recommended Surface Application: Multi-Surface, Non-Porous"),
          (85, "Industry or Government Certifications: MBDC Certified"),
          (85, "Product Results: Cleaner, Disinfects"),
          (85, "Recommended Product Application: Multi-Purpose"),
          (85, "TCIN: 51952812"),
          (85, "UPC: 817939017432"),
          (85, "Item Number (DPCI): 003-02-0641"),
          (86, "Scent: Unscented"),
          (86, "Health Facts: Bleach-Free"),
          (86, "Product Warning: Keep off of clothing, keep out of eyes, keep out of reach of children, seek medical help if product is swallowed, wash contaminated clothing after handling, wash hands with soap and water after handling, flush immediately if product enters eyes"),
          (86, "Capacity (Volume): 30 Ounces"),
          (86, "Product Form: Liquid"),
          (86, "Recommended Surface Application: Glass, Ceramic, porcelain, Plastic"),
          (86, "Product Results: Cleaner, Disinfects"),
          (86, "Recommended Product Application: Shower, Toilet, Bath Tub, Countertops, Floor"),
          (86, "Surfaces Not Recommended: Aluminum, Wood, Marble, Brass"),
          (86, "TCIN: 13028043"),
          (86, "UPC: 044600080338"),
          (86, "Item Number (DPCI): 003-05-0332"),
          (87, "Scent: Fresh"),
          (87, "Product Warning: Contains corrosive ingredients, flush immediately if product enters eyes, keep off of clothing, keep out of eyes, keep out of reach of children, product can cause irreversible eye damage, seek medical help if product is swallowed, wash contaminated clothing after handling, wash hands with soap and water after handling, wear protective gloves when handling, avoid contact with skin"),
          (87, "Capacity (Volume): 48 Ounces"),
          (87, "Product Form: Liquid Gel"),
          (87, "Recommended Surface Application: Ceramic"),
          (87, "Product Results: Cleaner, Removes Dirt, Removes Soil, Used for Cleaning, Eliminates Stains"),
          (87, "Recommended Product Application: Toilet"),
          (87, "TCIN: 13341728"),
          (87, "UPC: 044600306278"),
          (87, "Item Number (DPCI): 003-05-0717"),
          (88, "Scent: Fir, Cypress"),
          (88, "Health Facts: Aluminum-Free, Paraben-Free, No Fragrance Added, Phthalate-Free, Dye-Free, Contains Naturally Derived Ingredients, Animal By-Product-Free, Artificial Fragrance-Free, Bleach-Free, Phosphate-Free, Phosphorus-Free, Ammonia-Free"),
          (88, "Product Warning: Flush immediately if product enters eyes, seek medical help if product is swallowed, drink water if product is swallowed, keep out of reach of children, flush immediately if product touches skin, avoid contact with skin"),
          (88, "Capacity (Volume): 32 Ounces"),
          (88, "Product Form: Liquid"),
          (88, "Sustainability Claims: Cruelty-Free, Plant-Based"),
          (88, "Recommended Surface Application: Porcelain"),
          (88, "Product Results: Removes Rust, Removes Limescale, Eliminates Stains, Used for Cleaning"),
          (88, "Recommended Product Application: Toilet"),
          (88, "Surfaces Not Recommended: Suede, Unfinished Leather, Unfinished Wood, Fabric, Silk"),
          (88, "TCIN: 13208821"),
          (88, "UPC: 732913227044"),
          (88, "Item Number (DPCI): 003-02-0029"),
          (89, "Dimensions (Overall): 23.03 Inches (H) x 5.0 Inches (W) x 2.01 Inches (D)"),
          (89, "Recommended Surface Application: Multi-Surface, Wood Surfaces"),
          (89, "Recommended Product Application: Floor"),
          (89, "Material: Plastic"),
          (89, "TCIN: 17316119"),
          (89, "UPC: 037000928140"),
          (89, "Item Number (DPCI): 003-05-0383"),
          (90, "Dimensions (Overall): 27.34 Inches (H) x 5.51 Inches (W) x 4.37 Inches (D)"),
          (90, "Recommended Surface Application: Floor, Multi-Surface"),
          (90, "Recommended Product Application: Floor, Multi-Purpose"),
          (90, "Material: Plastic"),
          (90, "TCIN: 18813263"),
          (90, "UPC: 037000928102"),
          (90, "Item Number (DPCI): 003-05-0385"),
          (91, "Scent: Fresh"),
          (91, "Product Warning: Keep out of reach of children"),
          (91, "Capacity (Volume): 42.6 Ounces"),
          (91, "Product Form: Powder"),
          (91, "Recommended Surface Application: Carpet"),
          (91, "Product Results: Eliminates Odors"),
          (91, "Recommended Product Application: Carpet"),
          (91, "TCIN: 12856531"),
          (91, "UPC: 033200114437"),
          (91, "Item Number (DPCI): 003-04-0327"),
          (92, "Dimensions (Overall): 19.5 Inches (H) x 11.5 Inches (W) x 13.35 Inches (D)"),
          (92, "Handle Material: Plastic, Metal"),
          (92, "Material: Plastic, Metal"),
          (92, "TCIN: 50335649"),
          (92, "UPC: 041785998151"),
          (92, "Item Number (DPCI): 003-03-0027"),
          (93, "Dimensions (Overall): 55.25 Inches (H) x 15.88 Inches (W) x 1.25 Inches (D)"),
          (93, "Includes: Dust Pan, Broom"),
          (93, "Features: Grip Handle, Hanging Loop"),
          (93, "Recommended Surface Application: Linoleum, Laminate, Tile Floors, Floor, Outdoor Hard Surfaces"),
          (93, "Material: Polyester, Steel"),
          (93, "TCIN: 16972603"),
          (93, "UPC: 071736002484"),
          (93, "Item Number (DPCI): 003-03-2055"),
          (94, "Scent: Original"),
          (94, "Health Facts: Phosphate-Free"),
          (94, "Product Warning: Keep out of eyes, wash contaminated clothing after handling, seek medical help if product is swallowed, keep out of reach of children, keep container tightly sealed"),
          (94, "Capacity (Volume): 27 ounces"),
          (94, "Product Form: Capsule"),
          (94, "Number of uses: 35"),
          (94, "TCIN: 80201361"),
          (94, "UPC: 829576122738"),
          (94, "Item Number (DPCI): 003-08-7668"),
          (95, "Scent: Original"),
          (95, "Health Facts: Phosphate-Free"),
          (95, "Product Warning: Keep out of reach of children, keep container tightly sealed, seek medical help if product is swallowed"),
          (95, "Capacity (Volume): 92 fl oz (US)"),
          (95, "Formulation: Concentrated"),
          (95, "Product Form: Liquid"),
          (95, "Sustainability Claims: Recyclable, Biodegradable"),
          (95, "Surfaces Not Recommended: Leather"),
          (95, "Number of uses: 64"),
          (95, "TCIN: 13918059"),
          (95, "UPC: 037000402183"),
          (95, "Item Number (DPCI): 003-08-0703"),
          (96, "Scent: Unscented"),
          (96, "Health Facts: Dye-Free, Bleach-Free, Fluoride-Free, Hypoallergenic, No Fragrance Added"),
          (96, "Product Warning: Seek medical help if product is swallowed, keep out of reach of children, keep out of reach of animals, keep out of eyes, flush immediately if product enters eyes"),
          (96, "Capacity (Volume): 141 fl oz (US)"),
          (96, "Features: Sensitive Formula"),
          (96, "Formulation: Concentrated"),
          (96, "Product Form: Liquid"),
          (96, "Sustainability Claims: Biodegradable"),
          (96, "Surfaces Not Recommended: Fur, Wool, Velvet, Suede, Rayon, Silk, Leather"),
          (96, "Number of uses: 94"),
          (96, "TCIN: 48638959"),
          (96, "UPC: 072613461592"),
          (96, "Item Number (DPCI): 003-08-0106"),
          (97, "Scent: Fresh, Outdoor"),
          (97, "Health Facts: Phosphate-Free"),
          (97, "Product Warning: Keep out of reach of children, keep container tightly sealed"),
          (97, "Product Form: Sheet"),
          (97, "Package Quantity: 250"),
          (97, "TCIN: 76152966"),
          (97, "UPC: 037000514572"),
          (97, "Item Number (DPCI): 003-07-3779"),
          (98, "Scent: Original"),
          (98, "Health Facts: Phosphate-Free"),
          (98, "Product Warning: Keep container tightly sealed, keep out of reach of children"),
          (98, "Capacity (Volume): 105"),
          (98, "Product Form: Sheet"),
          (98, "Package Quantity: 105"),
          (98, "TCIN: 51847739"),
          (98, "UPC: 037000978350"),
          (98, "Item Number (DPCI): 003-07-0392"),
          (99, "Dimensions (Overall): 41.93 Inches (H) x 15.59 Inches (W) x 13.39 Inches (D)"),
          (99, "Weight: 15.19 Pounds"),
          (99, "Includes: Large Area Cleaning Tool, Crevice Tool, Pet Hair Tool, Multi-Angle Brush, Stair Tool"),
          (99, "Features: Filter, Tangle Free Turbine Tool, Pet Hair Pick Up"),
          (99, "Capacity (Volume): .42 Gallon"),
          (99, "Cable/Cord Length: 24.5 Feet"),
          (99, "Wattage Required: 210 watts"),
          (99, "Number of Speeds: 1"),
          (99, "Bag Type: Bagless"),
          (99, "Cleaning Path Width: 13.4 Inches"),
          (99, "Recommended Surface Application: Hard Floor, Carpet, Hardwood"),
          (99, "Filter Type: HEPA"),
          (99, "Hose Length: 15.3 Feet"),
          (99, "Power Source: Electric"),
          (99, "Battery: No Battery Used"),
          (99, "Warranty: 5 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (99, "TCIN: 76578376"),
          (99, "UPC: 885609005034"),
          (99, "Item Number (DPCI): 329-00-0097"),
          (100, "Dimensions (Overall): 3.54 Inches (H) x 13.4 Inches (W) x 13.4 Inches (D)"),
          (100, "Weight: 6.77 Pounds"),
          (100, "Includes: Instruction Manual, Filter, Charging Base"),
          (100, "Features: Automatic Height Adjustment, Pet Hair Pick Up, Variable Suction Control, Edge Cleaning, Dirt Detection Sensor"),
          (100, "Capacity (Volume): .6 Liter"),
          (100, "Run Time: 90 Minutes"),
          (100, "Number of Speeds: 1"),
          (100, "Bag Type: Bagless"),
          (100, "Cleaning Path Width: 7 Inches"),
          (100, "Recommended Surface Application: Hardwood, Hard Floor, Carpet, Multi-Surface"),
          (100, "Filter Type: Standard"),
          (100, "Hose Length: 0 Inches"),
          (100, "Power Source: Battery-Powered"),
          (100, "Battery: 1 Non-Universal Lithium Ion, Required, Included"),
          (100, "Warranty: 1 Year Limited Warranty. To obtain a copy of the manufacturer's or supplier's warranty for this item prior to purchasing the item, please call Target Guest Services at 1-800-591-3869"),
          (100, "TCIN: 53741618"),
          (100, "UPC: 885155015426"),
          (100, "Item Number (DPCI): 329-00-0025")

        INSERT INTO shipping_options
          (item_id, shipping_details)
        VALUES
          (1, "Estimated ship dimensions: 11 inches length x 8 inches width x 2.5 inches height"),
          (1, "Estimated ship weight: 3 pounds"),
          (2, "Estimated ship dimensions: 3.24 inches length x 3.24 inches width x 3.17 inches height"),
          (2, "Estimated ship weight: 0.31 pounds"),
          (3, "Estimated ship dimensions: 2.2 inches length x 4 inches width x 3.3 inches height"),
          (3, "Estimated ship weight: 0.82 pounds"),
          (4, "Estimated ship dimensions: 7 inches length x 6.5 inches width x 10.25 inches height"),
          (4, "Estimated ship weight: 5 pounds"),
          (5, "Estimated ship dimensions: 3.05 inches length x 8.95 inches width x 13.6 inches height"),
          (5, "Estimated ship weight: 8 ounces"),
          (6, "Estimated ship dimensions: 3 inches length x 6 inches width x 9.56 inches height"),
          (6, "Estimated ship weight: 2.575 pounds"),
          (7, "Estimated ship dimensions: 16 inches length x 16 inches width x 2 inches height"),
          (7, "Estimated ship weight: 27.5 ounces"),
          (8, "Estimated ship dimensions: 1.58 inches length x 3.52 inches width x 7.147 inches height"),
          (8, "Estimated ship weight: 0.508 pounds"),
          (9, "Estimated ship dimensions: 0.81 inches length x 9 inches width x 6 inches height"),
          (9, "Estimated ship weight: 12.685 ounces"),
          (10, "Estimated ship dimensions: 2.38 inches length x 6.75 inches width x 6.75 inches height"),
          (10, "Estimated ship weight: 0.406 pounds"),
          (11, "Estimated ship dimensions: 1.88 inches length x 4 inches width x 7.5 inches height"),
          (11, "Estimated ship weight: 6 ounces"),
          (12, "Estimated ship dimensions: 11.21 inches length x 8.88 inches width x 3.69 inches height"),
          (12, "Estimated ship weight: 1.91 pounds"),
          (13, "Estimated ship dimensions: 10.24 inches length x 6.35 inches width x 2.25 inches height"),
          (13, "Estimated ship weight: 2.02 pounds"),
          (14, "Estimated ship dimensions: 11.37 inches length x 4.49 inches width x 3.54 inches height"),
          (14, "Estimated ship weight: 0.17 pounds"),
          (15, "Estimated ship dimensions: 3.94 inches length x 11.63 inches width x 2.74 inches height"),
          (15, "Estimated ship weight: 24 ounces"),
          (16, "Estimated ship dimensions: 1 inches length x 1 inches width x 1 inches height"),
          (16, "Estimated ship weight: 1 pounds"),
          (17, "Estimated ship dimensions: 7.8 inches length x 5.2 inches width x 7.14 inches height"),
          (17, "Estimated ship weight: 7.17 pounds"),
          (17, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (18, "Estimated ship dimensions: 12.28 inches length x 3.54 inches width x 3.38 inches height"),
          (18, "Estimated ship weight: 2.96 pounds"),
          (19, "Estimated ship dimensions: 10 inches length x 8 inches width x 9.5 inches height"),
          (19, "Estimated ship weight: 15.75 pounds"),
          (20, "Estimated ship dimensions: 2.25 inches length x 7.786 inches width x 5.519 inches height"),
          (20, "Estimated ship weight: 13.76 ounces"),
          (21, "Estimated ship dimensions: 9.37 inches length x 3.92 inches width x 1.57 inches height"),
          (21, "Estimated ship weight: 0.33 pounds"),
          (22, "Estimated ship dimensions: 13.8 inches length x 10.2 inches width x 8.6 inches height"),
          (22, "Estimated ship weight: 5.5 pounds"),
          (23, "Estimated ship dimensions: 13 inches length x 8.25 inches width x 9.25 inches height"),
          (23, "Estimated ship weight: 4.08 pounds"),
          (24, "Estimated ship dimensions: 4.53 inches length x 4.53 inches width x 13.46 inches height"),
          (24, "Estimated ship weight: 2.93 pounds"),
          (24, "We regret that this item cannot be shipped to PO Boxes."),
          (24, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (25, "Estimated ship dimensions: 12.9 inches length x 12.8 inches width x 14.2 inches height"),
          (25, "Estimated ship weight: 9.95 pounds"),
          (26, "Estimated ship dimensions: 12.0472 inches length x 5.9 inches width x 5.9 inches height"),
          (26, "Estimated ship weight: 1.04 pounds"),
          (26, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (27, "Estimated ship dimensions: 9.2 inches length x 15.5 inches width x 15.7 inches height"),
          (27, "Estimated ship weight: 11.3 pounds"),
          (28, "Estimated ship dimensions: 4.25 inches length x 3.92 inches width x 2.02 inches height"),
          (28, "Estimated ship weight: 0.52 pounds"),
          (28, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (29, "Estimated ship dimensions: 6.1 inches length x 5.9 inches width x 3.6 inches height"),
          (29, "Estimated ship weight: 2.4692 pounds"),
          (29, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (30, "Estimated ship dimensions: 13.8 inches length x 12.5 inches width x 6.5 inches height"),
          (30, "Estimated ship weight: 14.4 pounds"),
          (31, "Estimated ship dimensions: 20.5 inches length x 11 inches width x 5 inches height"),
          (31, "Estimated ship weight: 5.8 pounds"),
          (32, "Estimated ship dimensions: 24.13 inches length x 17.13 inches width x 10.83 inches height"),
          (32, "Estimated ship weight: 35 pounds"),
          (33, "Estimated ship dimensions: 5.03 inches length x 4.98 inches width x 3.49 inches height"),
          (33, "Estimated ship weight: 1.04 pounds"),
          (33, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (34, "Estimated ship dimensions: 7 inches length x 5.4 inches width x 5.4 inches height"),
          (34, "Estimated ship weight: 1.06 pounds"),
          (34, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (35, "Estimated ship dimensions: 13.25 inches length x 10.27 inches width x 2.78 inches height"),
          (35, "Estimated ship weight: 4.49 pounds"),
          (36, "Estimated ship dimensions: 11.45 inches length x 9.42 inches width x 4.44 inches height"),
          (36, "Estimated ship weight: 2.11 pounds"),
          (37, "Estimated ship dimensions: 14.6 inches length x 9.5 inches width x 5.6 inches height"),
          (37, "Estimated ship weight: 6.6 pounds"),
          (38, "Estimated ship dimensions: 11 inches length x 7 inches width x 3 inches height"),
          (38, "Estimated ship weight: 2.175 pounds"),
          (39, "Estimated ship dimensions: 14.5 inches length x 11 inches width x 9.5 inches height"),
          (39, "Estimated ship weight: 1.86 pounds"),
          (40, "Estimated ship dimensions: 10.3 inches length x 10.6 inches width x 6.9 inches height"),
          (40, "Estimated ship weight: 10.2 pounds"),
          (41, "Estimated ship dimensions: 8 inches length x 8 inches width x 43 inches height"),
          (41, "Estimated ship weight: 44.85 pounds"),
          (41, "This item cannot be shipped to the following locations: APO/FPO, American Samoa, Guam, Northern Mariana Islands, Puerto Rico, United States Minor Outlying Islands, Virgin Islands, U.S., Alaska, Hawaii"),
          (41, "item ships from third party seller: WORLD WIDE STEREO"),
          (42, "Estimated ship dimensions: 27.4 inches length x 15.5 inches width x 4.7 inches height"),
          (42, "Estimated ship weight: 10.4 pounds"),
          (43, "Estimated ship dimensions: 5.51 inches length x 38.39 inches width x 25 inches height"),
          (43, "Estimated ship weight: 21.19 pounds"),
          (43, "We regret that this item cannot be shipped to PO Boxes."),
          (43, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (44, "Estimated ship dimensions: 4 inches length x 4 inches width x 1.5 inches height"),
          (44, "Estimated ship weight: 0.5291 pounds"),
          (44, "We regret that this item cannot be shipped to PO Boxes."),
          (44, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (45, "Estimated ship dimensions: 8.88 inches length x 6.13 inches width x 2.72 inches height"),
          (45, "Estimated ship weight: 1.34 pounds"),
          (45, "We regret that this item cannot be shipped to PO Boxes."),
          (45, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (46, "Estimated ship dimensions: 8.3 inches length x 5.59 inches width x 2.32 inches height"),
          (46, "Estimated ship weight: 0.92 pounds"),
          (46, "We regret that this item cannot be shipped to PO Boxes."),
          (46, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (47, "Estimated ship dimensions: 5.59 inches length x 5.41 inches width x 2.9 inches height"),
          (47, "Estimated ship weight: 0.55 pounds"),
          (47, "We regret that this item cannot be shipped to PO Boxes."),
          (47, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (48, "Estimated ship dimensions: 16.77 inches length x 13.55 inches width x 3.9 inches height"),
          (48, "Estimated ship weight: 7.12 pounds"),
          (48, "We regret that this item cannot be shipped to PO Boxes."),
          (49, "Estimated ship dimensions: 0.6 inches length x 5.4 inches width x 6.7 inches height"),
          (49, "Estimated ship weight: 0.25 pounds"),
          (49, "We regret that this item cannot be shipped to PO Boxes."),
          (49, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (50, "Estimated ship dimensions: 6.72 inches length x 5.27 inches width x 0.75 inches height"),
          (50, "Estimated ship weight: 0.16 pounds"),
          (51, "Estimated ship dimensions: 14.4 inches length x 5.7 inches width x 7.3 inches height"),
          (51, "Estimated ship weight: 6.7 pounds"),
          (52, "Estimated ship dimensions: 6.8 inches length x 5.3 inches width x 0.6 inches height"),
          (52, "Estimated ship weight: 0.2 pounds"),
          (53, "Estimated ship dimensions: 29 inches length x 20 inches width x 8 inches height"),
          (53, "Estimated ship weight: 13.01 pounds"),
          (53, "This item cannot be shipped to the following locations: APO/FPO, American Samoa, Guam, Northern Mariana Islands, Puerto Rico, United States Minor Outlying Islands, Virgin Islands, U.S., Alaska, Hawaii"),
          (53, "item ships from third party seller: Adorama Camera"),
          (54, "Estimated ship dimensions: 27.0079 inches length x 18.0315 inches width x 5.1181 inches height"),
          (54, "Estimated ship weight: 12.2136 pounds"),
          (54, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (55, "Estimated ship dimensions: 23.92 inches length x 16.3 inches width x 5.17 inches height"),
          (55, "Estimated ship weight: 10.06 pounds"),
          (56, "Estimated ship dimensions: 6.9 inches length x 6.5 inches width x 5.2 inches height"),
          (56, "Estimated ship weight: 3.1 pounds"),
          (56, "This item cannot be shipped to the following locations: APO/FPO, American Samoa, Guam, Northern Mariana Islands, Puerto Rico, United States Minor Outlying Islands, Virgin Islands, U.S., Alaska, Hawaii"),
          (56, "item ships from third party seller: Thermaltake Inc."),
          (57, "Estimated ship dimensions: 7.87 inches length x 10.23 inches width x 4.3 inches height"),
          (57, "Estimated ship weight: 5.725 pounds"),
          (57, "This item cannot be shipped to the following locations: APO/FPO, American Samoa, Guam, Northern Mariana Islands, Puerto Rico, United States Minor Outlying Islands, Virgin Islands, U.S., Alaska, Hawaii"),
          (57, "item ships from third party seller: Thermaltake Inc."),
          (58, "Estimated ship dimensions: 34.5 inches length x 13.75 inches width x 6.5 inches height"),
          (58, "Estimated ship weight: 13.5 pounds"),
          (58, "We regret that this item cannot be shipped to PO Boxes."),
          (58, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (59, "Estimated ship dimensions: 6.78 inches length x 3.83 inches width x 1.72 inches height"),
          (59, "Estimated ship weight: 0.58 pounds"),
          (60, "Estimated ship dimensions: 5.65 inches length x 5.41 inches width x 2.16 inches height"),
          (60, "Estimated ship weight: 0.61 pounds"),
          (61, "Estimated ship dimensions: 9.5 inches length x 4.75 inches width x 5.5 inches height"),
          (61, "Estimated ship weight: 1.5 pounds"),
          (61, "We regret that this item cannot be shipped to PO Boxes."),
          (61, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (62, "Estimated ship dimensions: 2.52 inches length x 5.98 inches width x 9.13 inches height"),
          (62, "Estimated ship weight: 0.4 pounds"),
          (63, "Estimated ship dimensions: 8.5 inches length x 11.5 inches width x 12.5 inches height"),
          (63, "Estimated ship weight: 1.27 pounds"),
          (64, "Estimated ship dimensions: 19.2 inches length x 8 inches width x 11.2 inches height"),
          (64, "Estimated ship weight: 4.1006 pounds"),
          (65, "Estimated ship dimensions: 2.75 inches length x 6.5 inches width x 9.5 inches height"),
          (65, "Estimated ship weight: 0.8 pounds"),
          (65, "We regret that this item cannot be shipped to PO Boxes."),
          (65, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (66, "Estimated ship dimensions: 10.57 inches length x 8.58 inches width x 4.4 inches height"),
          (66, "Estimated ship weight: 0.98 pounds"),
          (67, "Estimated ship dimensions: 13.3 inches length x 13 inches width x 8 inches height"),
          (67, "Estimated ship weight: 3.25 pounds"),
          (68, "Estimated ship dimensions: 13.04 inches length x 9.96 inches width x 2.91 inches height"),
          (68, "Estimated ship weight: 1.36 pounds"),
          (69, "Estimated ship dimensions: 2.5 inches length x 8.8 inches width x 11 inches height"),
          (69, "Estimated ship weight: 1.2 pounds"),
          (69, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (70, "Estimated ship dimensions: 9.8 inches length x 9.7 inches width x 3.5 inches height"),
          (70, "Estimated ship weight: 1.3228 pounds"),
          (71, "Estimated ship dimensions: 11.75 inches length x 9.63 inches width x 9 inches height"),
          (71, "Estimated ship weight: 3.3 pounds"),
          (71, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (72, "Estimated ship dimensions: 15.88 inches length x 15.16 inches width x 5.47 inches height"),
          (72, "Estimated ship weight: 3.96 pounds"),
          (72, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, Hawaii, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU), Alaska"),
          (73, "Estimated ship dimensions: 10.42 inches length x 7.98 inches width x 2.19 inches height"),
          (73, "Estimated ship weight: 0.47 pounds"),
          (74, "Estimated ship dimensions: 15.52 inches length x 13.28 inches width x 3.94 inches height"),
          (74, "Estimated ship weight: 1.65 pounds"),
          (75, "Estimated ship dimensions: 14.25 inches length x 9.5 inches width x 3.75 inches height"),
          (75, "Estimated ship weight: 5 pounds"),
          (75, "We regret that this item cannot be shipped to PO Boxes."),
          (75, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (76, "Estimated ship dimensions: 9.5 inches length x 40.63 inches width x 49.13 inches height"),
          (76, "Estimated ship weight: 36 pounds"),
          (76, "We regret that this item cannot be shipped to PO Boxes."),
          (76, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (77, "Estimated ship dimensions: 44.5 inches length x 28.7 inches width x 10.8 inches height"),
          (77, "Estimated ship weight: 83.78 pounds"),
          (77, "We regret that this item cannot be shipped to PO Boxes."),
          (77, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (78, "Estimated ship dimensions: 1.5 inches length x 29.6 inches width x 40.8 inches height"),
          (78, "Estimated ship weight: 10.5 pounds"),
          (78, "We regret that this item cannot be shipped to PO Boxes."),
          (78, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (79, "Estimated ship dimensions: 15.4 inches length x 12 inches width x 12.3 inches height"),
          (79, "Estimated ship weight: 4.2 pounds"),
          (79, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (80, "Estimated ship dimensions: 11.5 inches length x 16 inches width x 7 inches height"),
          (80, "Estimated ship weight: 4.35 pounds"),
          (80, "This item cannot be shipped to the following locations: APO/FPO, American Samoa, Guam, Northern Mariana Islands, Puerto Rico, United States Minor Outlying Islands, Virgin Islands, U.S., Alaska, Hawaii"),
          (80, "item ships from third party seller: VM Express"),
          (81, "Estimated ship dimensions: 11.5 inches length x 3.39 inches width x 3.02 inches height"),
          (81, "Estimated ship weight: 1.98 pounds"),
          (82, "Estimated ship dimensions: 10.76 inches length x 4.12 inches width x 2.45 inches height"),
          (82, "Estimated ship weight: 1.87 pounds"),
          (83, "Estimated ship dimensions: 10.57 inches length x 3.19 inches width x 3.04 inches height"),
          (83, "Estimated ship weight: 1.7 pounds"),
          (84, "Estimated ship dimensions: 11 inches length x 3.9 inches width x 2.9 inches height"),
          (84, "Estimated ship weight: 1.7 pounds"),
          (85, "Estimated ship dimensions: 10.12 inches length x 3.4 inches width x 2.82 inches height"),
          (85, "Estimated ship weight: 2 pounds"),
          (86, "Estimated ship dimensions: 10.19 inches length x 4.68 inches width x 2.94 inches height"),
          (86, "Estimated ship weight: 2.17 pounds"),
          (86, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (87, "Estimated ship dimensions: 10.53 inches length x 6.97 inches width x 2.53 inches height"),
          (87, "Estimated ship weight: 3.58 pounds"),
          (87, "We regret that this item cannot be shipped to PO Boxes."),
          (87, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, Hawaii, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU), Alaska"),
          (88, "Estimated ship dimensions: 2.798 inches length x 4.5 inches width x 9.618 inches height"),
          (88, "Estimated ship weight: 2.23 pounds"),
          (89, "Estimated ship dimensions: 23.25 inches length x 5.1 inches width x 2.1 inches height"),
          (89, "Estimated ship weight: 1.63 pounds"),
          (89, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (90, "Estimated ship dimensions: 28.5 inches length x 7.5 inches width x 5.7 inches height"),
          (90, "Estimated ship weight: 4.15 pounds"),
          (90, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (91, "Estimated ship dimensions: 8.57 inches length x 3.64 inches width x 2.91 inches height"),
          (91, "Estimated ship weight: 2.76 pounds"),
          (92, "Estimated ship dimensions: 19.4 inches length x 11.8 inches width x 11.6 inches height"),
          (92, "Estimated ship weight: 5.1 pounds"),
          (93, "Estimated ship dimensions: 2.25 inches length x 13.75 inches width x 54.5 inches height"),
          (93, "Estimated ship weight: 1.74 pounds"),
          (93, "We regret that this item cannot be shipped to PO Boxes."),
          (93, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (94, "Estimated ship dimensions: 10.28 inches length x 8.08 inches width x 3.43 inches height"),
          (94, "Estimated ship weight: 1.84 pounds"),
          (95, "Estimated ship dimensions: 7.3228 inches length x 5.3543 inches width x 10.9449 inches height"),
          (95, "Estimated ship weight: 7.143 pounds"),
          (96, "Estimated ship dimensions: 10.32 inches length x 9.38 inches width x 5.63 inches height"),
          (96, "Estimated ship weight: 10.01 pounds"),
          (97, "Estimated ship dimensions: 7 inches length x 5 inches width x 4.25 inches height"),
          (97, "Estimated ship weight: 1.27 pounds"),
          (97, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (98, "Estimated ship dimensions: 7.2 inches length x 4.4 inches width x 2.4 inches height"),
          (98, "Estimated ship weight: 0.55 pounds"),
          (98, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (99, "Estimated ship dimensions: 36.5 inches length x 11.2 inches width x 10.3 inches height"),
          (99, "Estimated ship weight: 21.7 pounds"),
          (99, "We regret that this item cannot be shipped to PO Boxes."),
          (99, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)"),
          (100, "Estimated ship dimensions: 17.73 inches length x 15.71 inches width x 5.08 inches height"),
          (100, "Estimated ship weight: 10.5 pounds"),
          (100, "We regret that this item cannot be shipped to PO Boxes."),
          (100, "This item cannot be shipped to the following locations: United States Minor Outlying Islands, American Samoa (see also separate entry under AS), Puerto Rico (see also separate entry under PR), Northern Mariana Islands, Virgin Islands, U.S., APO/FPO, Guam (see also separate entry under GU)")


        INSERT INTO return_options
          (item_id, return_details)
        VALUES
          (1, "This item can be returned to any Target store or Target.com."),
          (1, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (2, "This item can be returned to any Target store or Target.com."),
          (2, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (3, "This item can be returned to any Target store or Target.com."),
          (3, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (4, "This item can be returned to any Target store or Target.com."),
          (4, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (5, "This item can be returned to any Target store or Target.com."),
          (5, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (6, "This item can be returned to any Target store or Target.com."),
          (6, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (7, "This item can be returned to any Target store or Target.com."),
          (7, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (8, "This item can be returned to any Target store or Target.com."),
          (8, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (9, "This item can be returned to any Target store or Target.com."),
          (9, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (10, "This item can be returned to any Target store or Target.com."),
          (10, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (11, "This item can be returned to any Target store or Target.com."),
          (11, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (12, "This item can be returned to any Target store or Target.com."),
          (12, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (13, "This item can be returned to any Target store or Target.com."),
          (13, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (14, "This item can be returned to any Target store or Target.com."),
          (14, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (15, "This item can be returned to any Target store or Target.com."),
          (15, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (16, "This item can be returned to any Target store or Target.com."),
          (16, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (17, "This item can be returned to any Target store or Target.com."),
          (17, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (18, "This item can be returned to any Target store or Target.com."),
          (18, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (19, "This item can be returned to any Target store or Target.com."),
          (19, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (20, "This item can be returned to any Target store or Target.com."),
          (20, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (21, "This item can be returned to any Target store or Target.com."),
          (21, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (22, "This item can be returned to any Target store or Target.com."),
          (22, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (23, "This item can be returned to any Target store or Target.com."),
          (23, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (24, "This item can be returned to any Target store or Target.com."),
          (24, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (25, "This item can be returned to any Target store or Target.com."),
          (25, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (26, "This item can be returned to any Target store or Target.com."),
          (26, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (27, "This item can be returned to any Target store or Target.com."),
          (27, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (28, "This item can be returned to any Target store or Target.com."),
          (28, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (29, "This item can be returned to any Target store or Target.com."),
          (29, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (30, "This item can be returned to any Target store or Target.com."),
          (30, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (31, "This item can be returned to any Target store or Target.com."),
          (31, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (32, "This item can be returned to any Target store or Target.com."),
          (32, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (33, "This item can be returned to any Target store or Target.com."),
          (33, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (34, "This item can be returned to any Target store or Target.com."),
          (34, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (35, "This item can be returned to any Target store or Target.com."),
          (35, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (36, "This item can be returned to any Target store or Target.com."),
          (36, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (37, "This item can be returned to any Target store or Target.com."),
          (37, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (38, "This item can be returned to any Target store or Target.com."),
          (38, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (39, "This item can be returned to any Target store or Target.com."),
          (39, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (40, "This item can be returned to any Target store or Target.com."),
          (40, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (41, "This item can be returned to any Target store or Target.com."),
          (41, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (42, "This item can be returned to any Target store or Target.com."),
          (42, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (43, "This item can be returned to any Target store or Target.com."),
          (43, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (44, "This item can be returned to any Target store or Target.com."),
          (44, "This item must be returned within 15 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (45, "This item can be returned to any Target store or Target.com."),
          (45, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (46, "This item can be returned to any Target store or Target.com."),
          (46, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (47, "This item can be returned to any Target store or Target.com."),
          (47, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (48, "This item can be returned to any Target store or Target.com."),
          (48, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (49, "This item can be returned to any Target store or Target.com."),
          (49, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (50, "This item can be returned to any Target store or Target.com."),
          (50, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (51, "This item can be returned to any Target store or Target.com."),
          (51, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (52, "This item can be returned to any Target store or Target.com."),
          (52, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (53, "This item can be returned to any Target store or Target.com."),
          (53, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (54, "This item can be returned to any Target store or Target.com."),
          (54, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (55, "This item can be returned to any Target store or Target.com."),
          (55, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (56, "This item can be returned to any Target store or Target.com."),
          (56, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (57, "This item can be returned to any Target store or Target.com."),
          (57, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (58, "This item can be returned to any Target store or Target.com."),
          (58, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (59, "This item can be returned to any Target store or Target.com."),
          (59, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (60, "This item can be returned to any Target store or Target.com."),
          (60, "This item must be returned within 30 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (61, "This item can be returned to any Target store or Target.com."),
          (61, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (62, "This item can be returned to any Target store or Target.com."),
          (62, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (63, "This item can be returned to any Target store or Target.com."),
          (63, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (64, "This item can be returned to any Target store or Target.com."),
          (64, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (65, "This item can be returned to any Target store or Target.com."),
          (65, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (66, "This item can be returned to any Target store or Target.com."),
          (66, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (67, "This item can be returned to any Target store or Target.com."),
          (67, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (68, "This item can be returned to any Target store or Target.com."),
          (68, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (69, "This item can be returned to any Target store or Target.com."),
          (69, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (70, "This item can be returned to any Target store or Target.com."),
          (70, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (71, "This item can be returned to any Target store or Target.com."),
          (71, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (72, "This item can be returned to any Target store or Target.com."),
          (72, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (73, "This item can be returned to any Target store or Target.com."),
          (73, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (74, "This item can be returned to any Target store or Target.com."),
          (74, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (75, "This item can be returned to any Target store or Target.com."),
          (75, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (76, "This item can be returned to any Target store or Target.com."),
          (76, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (77, "This item can be returned to any Target store or Target.com."),
          (77, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (78, "This item can be returned to any Target store or Target.com."),
          (78, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (79, "This item can be returned to any Target store or Target.com."),
          (79, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (80, "This item can be returned to any Target store or Target.com."),
          (80, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (81, "This item can be returned to any Target store or Target.com."),
          (81, "This item must be returned within 365 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (82, "This item can be returned to any Target store or Target.com."),
          (82, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (83, "This item can be returned to any Target store or Target.com."),
          (83, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (84, "This item can be returned to any Target store or Target.com."),
          (84, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (85, "This item can be returned to any Target store or Target.com."),
          (85, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (86, "This item can be returned to any Target store or Target.com."),
          (86, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (87, "This item must be returned to any Target store."),
          (87, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (88, "This item can be returned to any Target store or Target.com."),
          (88, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (89, "This item can be returned to any Target store or Target.com."),
          (89, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (90, "This item can be returned to any Target store or Target.com."),
          (90, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (91, "This item can be returned to any Target store or Target.com."),
          (91, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (92, "This item can be returned to any Target store or Target.com."),
          (92, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (93, "This item can be returned to any Target store or Target.com."),
          (93, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (94, "This item can be returned to any Target store or Target.com."),
          (94, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (95, "This item can be returned to any Target store or Target.com."),
          (95, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (96, "This item can be returned to any Target store or Target.com."),
          (96, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (97, "This item can be returned to any Target store or Target.com."),
          (97, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (98, "This item can be returned to any Target store or Target.com."),
          (98, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (99, "This item can be returned to any Target store or Target.com."),
          (99, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details."),
          (100, "This item can be returned to any Target store or Target.com."),
          (100, "This item must be returned within 90 days of the in-store purchase, ship date or online order pickup. See return policy for details.")