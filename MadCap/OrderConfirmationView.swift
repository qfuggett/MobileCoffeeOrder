//
//  OrderConfirmationView.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/7/26.
//

import SwiftUI

struct OrderConfirmationView: View {
    var product: Product
//    var customerName: String
    var body: some View {
        VStack {
            Text("Your order has been sent to the kitchen.")
            if !product.notes.isEmpty {
                Text("You added: '\(product.notes)' to your order.")
            }
            Text("Your total is:")
            Text(String(format: "%.2f", product.calculatePrice()))
        }
    }
}

#Preview {
    OrderConfirmationView(product: Product(name: "PLACEBO DECAF", imageName: "test", description: "decaf coffee", price: 6.50, type: .product, temp: .hot, notes: "No sugar"))
}
