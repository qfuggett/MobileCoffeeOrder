//
//  Data.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//

import SwiftUI

let menuItems: [menuCategory: [Product]] = [
    .filterEspresso: [
        Product(name: "DAY DREAM", imageName: "dayDream", description: "plum, honey, lavender, delicate", price: 6.00),
        Product(name: "REKO", imageName: "reko", description: "cranberry, red tea, white grape, bright", price: 6.25),
        Product(name: "ALIRIO MUNOZ ORTEGA", imageName: "alirio", description: "white grape, lemonade, dates, juicy", price: 7.50),
        Product(name: "PLACEBO DECAF", imageName: "placebo", description: "candied orange, molasses, baking spice, silky", price: 5.50),
        Product(name: "EUREKA", imageName: "eureka", description: "dark coco, star anise, nutmeg, full", price: 4.25),
        Product(name: "ALIRIO MUNOZ ORTEGA ESPRESSO", imageName: "alirioEXPRESSO", description: "cherry, lemon curd, gala apple, soft", price: 4.75),
    ],
    .espressoMilk: [
        Product(name: "ESPRESSO CASCARA TONIC", imageName: "cascara", description: "Tonic and cascara syrups with espresso and sparkling water. Available iced only. 12 oz", price: 7.00),
        Product(name: "MACCHIATO", imageName: "macchiato", description: "Two shots of espresso plus steamed milk. Available hot or cold. 3 oz.", price: 5.00),
        Product(name: "CORTADO", imageName: "cortado", description: "Two shots of espresso plus steamed milk. Available hot or iced. 4 oz.", price: 5.25),
        Product(name: "CAPUCCINO", imageName: "capuccino", description: "Two shots of espresso plus steamed milk. Available hot or iced. 6 oz", price: 5.75),
        Product(name: "CAFE LATTE", imageName: "latte", description: "Two shots of espresso plus steamed milk. Available hot or iced. 10 oz.", price: 6.25),
        Product(name: "CAFE MIEL", imageName: "miel", description: "Caffe latte with honey and cinnamon. Available hot or iced. 10 oz.", price: 7.00),
        Product(name: "MOCHA", imageName: "mocha", description: "Caffe latte with Omahene single origin cocoa from Ghana. Available hot or iced. 10 oz.", price: 7.00),
        Product(name: "VANILLA LATTE", imageName: "vanillaLatte", description: "Caffe latte with house made vanilla syrup. Available hot or iced. 10 oz.", price: 7.00),
        Product(name: "FLIGHT", imageName: "flight", description: "Choose between house blend or single origin flight. 4 oz of filter coffee, 3 oz macchiato, 1 oz espresso", price: 9.00),
    ],
    .signature: [
        Product(name: "HOPPER'S POND", imageName: "hoppers", description: "Celebrating our partnership with producer Juliana Guevara, this signature beverage features lychee-dragonfruit foam layered over kiwi, tangerine, Demerara sugar, and espresso.", price: 9.00),
    ],
    .tea: [
        Product(name: "MARSHMALLOW", imageName: "marshmallow", description: "BOTANICAL\nIngredients: marshmallow root, chamomile, or orange peel", price: 4.50),
        Product(name: "MEADOW", imageName: "meadow", description: "BOTANICAL\nIngredients: tarragon, spearmint, lemongrass", price: 4.50),
        Product(name: "CAI CHA", imageName: "cai-cha", description: "GREEN\nNotes: guava, toasted rice paper, nori", price: 4.50),
        Product(name: "SHAN LIN XI WINTER SPROUT", imageName: "shan-lin-xi", description: "LIGHT OOLONG\nNotes: cotton candy, caramelized ginger, kettle corn", price: 6.50),
        Product(name: "NANTOU DARK", imageName: "nantou-dark", description: "DARK OOLONG\nNotes: crunch cake, malt, wheat toast", price: 5.50),
        Product(name: "A DIFFERENT EIGHTEEN", imageName: "different-eighteen", description: "RED\nNotes: molasses, toffee, buttered toast", price: 6.00),
        Product(name: "CASCARA", imageName: "cascara", description: "COFFEE CHERRY\nNotes: hibiscus, peach, vanilla", price: 4.50),
        Product(name: "CHAI LATTE", imageName: "chai-latte", description: "Tea latte with house made chai. Available hot or iced. 10 oz.", price: 6.25),
        Product(name: "MATCHA LATTE", imageName: "matcha-latte", description: "Premium matcha from Ketti prepared as a latte. Available hot or iced. 10 oz.", price: 7.00),
        Product(name: "YUZU MANGO MATCHA LATTE", imageName: "yuzu-mango-matcha", description: "Yuzu juice, creamy mango, and matcha. Available hot or iced. 10 oz | Available hot or iced", price: 8.75),
    ],
    .draftFood: [
        Product(name: "NITRO COLD COFFEE", imageName: "nitro", description: "fruite punch, cherry blossom, plum", price: 5.50),
        Product(name: "SPARKLING WATER", imageName: "sparkling", description: "refreshing sparkling water", price: 0.00),
        Product(name: "RUGELACH", imageName: "rugelach", description: "A small, rolled, and flaky sweet pastry with a fruit filling.", price: 3.00),
        Product(name: "MISO-CARAMEL BANANA LOAF", imageName: "bananaLoaf", description: "A balanced and caramelized sweet banana bread loaf.", price: 4.00),
        Product(name: "CHOCOLATE CHIP COOKIE", imageName: "chocolateChip", description: "A crisp and flavorful version of a classic cookie.", price: 4.00),
        Product(name: "GRANOLA", imageName: "granola", description: "Add steamed or cold milk of your choice + $1.00", price: 3.50),
    ],
]
