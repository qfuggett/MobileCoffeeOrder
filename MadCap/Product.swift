//
//  Product.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//

import SwiftUI

enum ItemType {
    case product
    case storeItem
}

// Live items & store items share the same struct
struct Product: Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var price: Double
    var type: ItemType
}

struct ProductCard: View {
    let product: Product
    
    var body: some View {
        VStack {
            Text("$\(String(format: "%.2f", product.price))")
                .font(.subheadline)
            
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            Text(product.name)
                .font(.headline)
            
            Text(product.description)
                .font(.caption)
            
        }
        .frame(width: 150)
    }
}
