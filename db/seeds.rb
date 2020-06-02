Yeast.create!([
  {name: "Wyeast 1056 American Ale", recipe_id: 1},
  {name: "Wyeast 1007 German Ale Yeast", recipe_id: 2},
  {name: "Wyeast 1968 London ESB", recipe_id: 3},
  {name: "Wyeast 1056 American Ale", recipe_id: 4},
  {name: "Wyeast 1762 Belgian Abbey II", recipe_id: 5},
  {name: "Wyeast 1187 Ringwood Ale", recipe_id: 6},
  {name: "Wyeast 1728 Scottish Ale", recipe_id: 7}
])
Hop.create!([
  {name: "Centenial @ 9.5% AA", hop_type: "bittering", weight: 2.0, recipe_id: 1},
  {name: "East Kent Golding", hop_type: "flavor", weight: 0.5, recipe_id: 1},
  {name: "Cascade", hop_type: "flavor", weight: 0.5, recipe_id: 1},
  {name: "Cascade", hop_type: "aroma", weight: 1.0, recipe_id: 1},
  {name: "Cascade", hop_type: "dry", weight: 0.5, recipe_id: 1},
  {name: "Northern Brewer", hop_type: "bittering", weight: 6.8, recipe_id: 2},
  {name: "Williamette", hop_type: "flavor", weight: 0.33, recipe_id: 2},
  {name: "Mount Hood", hop_type: "flavor", weight: 0.33, recipe_id: 2},
  {name: "Williamette", hop_type: "aroma", weight: 0.33, recipe_id: 2},
  {name: "Cascade", hop_type: "aroma", weight: 0.33, recipe_id: 2},
  {name: "Northern Brewer @ 8.5% AA", hop_type: "bittering", weight: 1.0, recipe_id: 3},
  {name: "Cascade", hop_type: "flavor", weight: 0.5, recipe_id: 3},
  {name: "Willamette", hop_type: "flavor", weight: 0.5, recipe_id: 3},
  {name: "Cascade", hop_type: "aroma", weight: 1.0, recipe_id: 3},
  {name: "Nugget @ 12% AA", hop_type: "bittering", weight: 0.5, recipe_id: 4},
  {name: "Centennial @ 10% AA", hop_type: "bittering", weight: 0.5, recipe_id: 4},
  {name: "Cascade", hop_type: "flavor", weight: 0.25, recipe_id: 4},
  {name: "Yakima Magnum @ 15% AA", hop_type: "bittering", weight: 0.33, recipe_id: 5},
  {name: "German Hallertau Hersbrucker", hop_type: "flavor", weight: 0.5, recipe_id: 5},
  {name: "Willamette", hop_type: "aroma", weight: 0.25, recipe_id: 5},
  {name: "Cascade @ 5% AA", hop_type: "bittering", weight: 1.3, recipe_id: 6},
  {name: "Willamette", hop_type: "flavor", weight: 1.0, recipe_id: 6},
  {name: "Progress", hop_type: "flavor", weight: 1.0, recipe_id: 6},
  {name: "Cascade", hop_type: "aroma", weight: 1.0, recipe_id: 6},
  {name: "Cascade", hop_type: "dry", weight: 0.25, recipe_id: 6},
  {name: "Willamette", hop_type: "dry", weight: 0.25, recipe_id: 6},
  {name: "Whitbread Goldings Variety @ 5.7 AA", hop_type: "bittering", weight: 1.5, recipe_id: 7},
  {name: "Fuggles", hop_type: "flavor", weight: 0.25, recipe_id: 7},
  {name: "East Kent Goldings", hop_type: "flavor", weight: 0.25, recipe_id: 7}
])
Recipe.create!([
  {name: "Hop Devil", category: "American IPA", summary: "Luminescent amber IPA with a thick, beige head and punchy hop aroma. A rich, malty palate with tangy hops in the back leads to a long, dry finish packed full of Cascade hops."},
  {name: "Long Trail Ale", category: "American Amber Ale", summary: "Full-bodied amber ale with clean, complex flavor"},
  {name: "Goose Island Honker's Ale", category: "English Bitter", summary: "Medium bodied beer with off white head.  Pleasing blend of Cascade hops and spicy fruit which leads to a well-rounded smooth body of malt and hops."},
  {name: "Sierra Nevada Porter", category: "Porter", summary: "Medium to full-bodied porter with attractive chestnut body with red highlights and creamy tan head.  Enticing medley of malt, roasted grains, chocolate, coffee, and floral hops. Malty with accents of nutty and roasted grains, chocolate, and packed with hops."},
  {name: "Fat Tire Amber Ale", category: "Belgian-Style Pale Ale", summary: "Copper/amber beer with off-white, tightly-beaded head with Belgian lace. Heady aroma of bread and sweet caramel malt. Nice balance of sweet malt, freshly baked biscuits and crisp hops."},
  {name: "Magic Hat Blind Faith IPA", category: "IPA", summary: "Off-white head covers a multi-faceted copper beer with golden/amber tints. Malt greets the nose and leads to a potent hop aroma. Hoppy bitterness is tempered by malt and the finish is long and brimming with cascade hops."},
  {name: "Belhaven Wee Heavy", category: "Scottish Ale", summary: "Pours with a stunning, creamy dark beige head that gently collapses into an amber beer. Powerful aroma of sweet malt and bread leads to a complex palate brimming with sweet malt, then roast malt enters with just a hint of smoke."}
])
Favorite.create!([
  {recipe_id: 2, user_id: 5},
  {recipe_id: 1, user_id: 5}
])
Grain.create!([
  {name: "German 10 L Dark Munich Malt", weight: 8.0, recipe_id: 1},
  {name: "German 65 L Dark Crystal Malt", weight: 8.0, recipe_id: 1},
  {name: "German Cara-Munich Malt", weight: 8.0, recipe_id: 1},
  {name: "55L British Crystal Malt", weight: 10.0, recipe_id: 2},
  {name: "British Chocolate Malt", weight: 0.5, recipe_id: 2},
  {name: "US 40 L Crystal Malt", weight: 8.0, recipe_id: 3},
  {name: "Belgian Cara-Munich Malt", weight: 8.0, recipe_id: 3},
  {name: "German Munich Malt", weight: 8.0, recipe_id: 3},
  {name: "US 80 L Crystal Malt", weight: 10.0, recipe_id: 4},
  {name: "US Chocolate Malt", weight: 10.0, recipe_id: 4},
  {name: "US Black Malt", weight: 4.0, recipe_id: 4},
  {name: "US 80 L Crystal Malt", weight: 8.0, recipe_id: 5},
  {name: "German 10 L Dark Munich Malt", weight: 6.0, recipe_id: 5},
  {name: "US Victory Malt", weight: 4.0, recipe_id: 5},
  {name: "Belgian Biscuit Malt", weight: 3.0, recipe_id: 5},
  {name: "British 55 L Crystal Malt", weight: 10.0, recipe_id: 6},
  {name: "British Chocolate Malt", weight: 0.5, recipe_id: 6},
  {name: "British 55 L Crystal Malt", weight: 9.0, recipe_id: 7},
  {name: "Belgian Biscuit Malt", weight: 4.0, recipe_id: 7},
  {name: "Belgian Aromatic Malt", weight: 3.0, recipe_id: 7},
  {name: "Peated Malt", weight: 2.0, recipe_id: 7},
  {name: "British Black Patent Malt", weight: 1.5, recipe_id: 7},
  {name: "Roasted Barley", weight: 1.5, recipe_id: 7}
])
Malt.create!([
  {name: "Muntons Extra Light DME", weight: 7.5, recipe_id: 1},
  {name: "Malto Dextrin", weight: 0.375, recipe_id: 1},
  {name: "Muntons Extra Light DME", weight: 5.25, recipe_id: 2},
  {name: "Muntons Wheat DME", weight: 0.25, recipe_id: 2},
  {name: "Muntons Light DME", weight: 5.75, recipe_id: 3},
  {name: "Alexanders Pale Malt Extract Syrup", weight: 4.0, recipe_id: 4},
  {name: "Muntons Extra Light DME", weight: 3.5, recipe_id: 4},
  {name: "Malto Dextrin", weight: 0.5, recipe_id: 4},
  {name: "Alexanders Pale Malt Extract Syrup", weight: 4.0, recipe_id: 5},
  {name: "Muntons Extra Light DME", weight: 2.5, recipe_id: 5},
  {name: "Muntons Extra Light DME", weight: 6.0, recipe_id: 6},
  {name: "Muntons Wheat DME", weight: 1.0, recipe_id: 6},
  {name: "Muntons Extra Light DME", weight: 8.0, recipe_id: 7},
  {name: "Invert Sugar (Lyle's Golden Syrup)", weight: 0.75, recipe_id: 7}
])
User.create!([
  {name: "Dave", email: "dave@dave.com", password_digest: "$2a$12$hMb2nfeSubp8ZaBcHsZ.1.ePXJV4EBKwJQHnALsVNXD6BK7c/T4Ua"},
  {name: "Vern", email: "vern@vern.com", password_digest: "$2a$12$epxiJarbWRNZrxUDpJpNJeqU3CilK1lEt3Cv/HU/2ONmm9fPjlsBG"},
  {name: "dvfleet413", email: "dvfleet413@gmail.com", password_digest: "$2a$12$9f32gn.KqUdwij4jnZGz4e.8L.KKv3KGZt0jvA2JF/za3WnLa7pWq"}
])
