//
//  Product.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//

import SwiftUI

enum ItemType {
    case food
    case storeItem
}

enum Temperature {
    case hot
    case iced
}

enum Milk {
    case whole
    case reduced
    case oat
}

// Live items & store items share the same struct
struct Product: Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var price: Double
    var type: ItemType
    var temp: Temperature = .hot
    var milk: Milk = .whole
    var notes: String = ""
    
    func calculatePrice() -> Double {
        let subtotal = price 
        let tax = subtotal * 0.08
        return subtotal + tax    }
}

struct ProductCard: View {
    let product: Product
    
    var body: some View {
        VStack {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            Text(product.name)
                .font(.headline)
            
        }
        .frame(width: 150)
    }
}
