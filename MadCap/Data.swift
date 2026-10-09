//
//  Data.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//

import SwiftUI

let menuItems: [menuCategory: [Product]] = [
    .filterEspresso: [
        Product(name: "DAY DREAM", imageName: "test", description: "plum, honey, lavender, delicate", price: 6.00, type: .food),
        Product(name: "REKO", imageName: "test", description: "cranberry, red tea, white grape, bright", price: 6.25, type: .food),
        Product(name: "ALIRIO MUNOZ ORTEGA", imageName: "test", description: "white grape, lemonade, dates, juicy", price: 7.50, type: .food),
        Product(name: "PLACEBO DECAF", imageName: "placebo", description: "candied orange, molasses, baking spice, silky", price: 5.50, type: .food),
        Product(name: "EUREKA", imageName: "eureka", description: "dark coco, star anise, nutmeg, full", price: 4.25, type: .food),
        Product(name: "ALIRIO MUNOZ ORTEGA ESPRESSO", imageName: "alirioEXPRESSO", description: "cherry, lemon curd, gala apple, soft", price: 4.75, type: .food),
    ],
    .espressoMilk: [
        Product(name: "ESPRESSO CASCARA TONIC", imageName: "cascara", description: "Tonic and cascara syrups with espresso and sparkling water. Available iced only. 12 oz", price: 7.00, type: .food),
        Product(name: "MACCHIATO", imageName: "macchiato", description: "Two shots of espresso plus steamed milk. Available hot or cold. 3 oz.", price: 5.00, type: .food),
        Product(name: "CORTADO", imageName: "cortado", description: "Two shots of espresso plus steamed milk. Available hot or iced. 4 oz.", price: 5.25, type: .food),
        Product(name: "CAPUCCINO", imageName: "capuccino", description: "Two shots of espresso plus steamed milk. Available hot or iced. 6 oz", price: 5.75, type: .food),
        Product(name: "CAFE LATTE", imageName: "latte", description: "Two shots of espresso plus steamed milk. Available hot or iced. 10 oz.", price: 6.25, type: .food),
        Product(name: "CAFE MIEL", imageName: "miel", description: "Caffe latte with honey and cinnamon. Available hot or iced. 10 oz.", price: 7.00, type: .food),
        Product(name: "MOCHA", imageName: "mocha", description: "Caffe latte with Omahene single origin cocoa from Ghana. Available hot or iced. 10 oz.", price: 7.00, type: .food),
        Product(name: "VANILLA LATTE", imageName: "vanillaLatte", description: "Caffe latte with house made vanilla syrup. Available hot or iced. 10 oz.", price: 7.00, type: .food),
        Product(name: "FLIGHT", imageName: "flight", description: "Choose between house blend or single origin flight. 4 oz of filter coffee, 3 oz macchiato, 1 oz espresso", price: 9.00, type: .food),
    ],
    .signature: [
        Product(name: "HOPPER'S POND", imageName: "hoppers", description: "Celebrating our partnership with producer Juliana Guevara, this signature beverage features lychee-dragonfruit foam layered over kiwi, tangerine, Demerara sugar, and espresso.", price: 9.00, type: .food),
    ],
    .tea: [
        Product(name: "MARSHMALLOW", imageName: "marshmallow", description: "BOTANICAL\nIngredients: marshmallow root, chamomile, or orange peel", price: 4.50, type: .food),
        Product(name: "MEADOW", imageName: "meadow", description: "BOTANICAL\nIngredients: tarragon, spearmint, lemongrass", price: 4.50, type: .food),
        Product(name: "CAI CHA", imageName: "cai-cha", description: "GREEN\nNotes: guava, toasted rice paper, nori", price: 4.50, type: .food),
        Product(name: "SHAN LIN XI WINTER SPROUT", imageName: "shan-lin-xi", description: "LIGHT OOLONG\nNotes: cotton candy, caramelized ginger, kettle corn", price: 6.50, type: .food),
        Product(name: "NANTOU DARK", imageName: "nantou-dark", description: "DARK OOLONG\nNotes: crunch cake, malt, wheat toast", price: 5.50, type: .food),
        Product(name: "A DIFFERENT EIGHTEEN", imageName: "different-eighteen", description: "RED\nNotes: molasses, toffee, buttered toast", price: 6.00, type: .food),
        Product(name: "CASCARA", imageName: "cascara", description: "COFFEE CHERRY\nNotes: hibiscus, peach, vanilla", price: 4.50, type: .food),
        Product(name: "CHAI LATTE", imageName: "chai-latte", description: "Tea latte with house made chai. Available hot or iced. 10 oz.", price: 6.25, type: .food),
        Product(name: "MATCHA LATTE", imageName: "matcha-latte", description: "Premium matcha from Ketti prepared as a latte. Available hot or iced. 10 oz.", price: 7.00, type: .food),
        Product(name: "YUZU MANGO MATCHA LATTE", imageName: "yuzu-mango-matcha", description: "Yuzu juice, creamy mango, and matcha. Available hot or iced. 10 oz | Available hot or iced", price: 8.75, type: .food),
    ],
    .draftFood: [
        Product(name: "NITRO COLD COFFEE", imageName: "nitro", description: "fruite punch, cherry blossom, plum", price: 5.50, type: .food),
        Product(name: "SPARKLING WATER", imageName: "sparkling", description: "refreshing sparkling water", price: 0.00, type: .food),
        Product(name: "RUGELACH", imageName: "rugelach", description: "A small, rolled, and flaky sweet pastry with a fruit filling.", price: 3.00, type: .food),
        Product(name: "MISO-CARAMEL BANANA LOAF", imageName: "bananaLoaf", description: "A balanced and caramelized sweet banana bread loaf.", price: 4.00, type: .food),
        Product(name: "CHOCOLATE CHIP COOKIE", imageName: "chocolateChip", description: "A crisp and flavorful version of a classic cookie.", price: 4.00, type: .food),
        Product(name: "GRANOLA", imageName: "granola", description: "Add steamed or cold milk of your choice + $1.00", price: 3.50, type: .food),
    ],
]


let storeItems: [storeCategory: [Product]] = [
    .merch: [
        Product(name: "MIIR 360 ALL-BLACK TRAVELER", imageName: "miir", description: "16 oz", price: 34, type: .storeItem),
        Product(name: "Essential Cap", imageName: "cap", description: "", price: 30, type: .storeItem),
        Product(name: "1041 FULTON DICKIES WORK SHIRT", imageName: "dickies", description: "", price: 50, type: .storeItem),
        Product(name: "STACKED LOGO HOODIE", imageName: "hoodie", description: "OUR CLASSIC STACKED LOGO ON A HOODIE", price: 42.50, type: .storeItem),
    ],
    .equipment: [
        Product(name: "LELIT BIANCA", imageName: "lelit", description: "FREE COFFEE & BARISTA CLASS WITH PURCHASE!", price: 2999.95, type: .storeItem),
        Product(name: "BREVILLE BARISTA TOUCH", imageName: "breville", description: "FREE BARISTA CLASS & COFFEE WITH PURCHASE", price: 799, type: .storeItem),
        Product(name: "BARATZA ENCORE ESP", imageName: "baratza", description: "Easy to use, great single grinder solution for both drip & espresso", price: 199.95, type: .storeItem),
        Product(name: "KALITA WAVE 155", imageName: "kalita", description: "", price: 32, type: .storeItem),
    ],
    .coffee: [
        Product(name: "MAURICIO BRAVO", imageName: "mauricio", description: "Tasting Notes: Clementine, Honeycrisp Apple, Vanilla", price: 13, type: .storeItem),
        Product(name: "ANAYIBE ORTIZ", imageName: "anayibe", description: "Tasting Notes: Prickly Pear, Lavender, Lychee", price: 17, type: .storeItem),
        Product(name: "IRVIN IZAGUIRRE", imageName: "irvin", description: "Tasting Notes: Cherry candy, honeysuckle, strawberry jam", price: 14.50, type: .storeItem),
        Product(name: "NELSON MORENO", imageName: "nelson", description: "Tasting Notes: Fruit punch, cherry blossom, plum", price: 14, type: .storeItem),
    ],
]
