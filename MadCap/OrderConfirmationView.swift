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
            if product.type == .food {
                VStack {
                    Text("Your order has been sent to the kitchen.")
                    if !product.notes.isEmpty {
                        Text("You added: '\(product.notes)' to your order.")
                    }
                    Text("Your total is:")
                    Text(String(format: "%.2f", product.calculatePrice()))
                }
                .font(.headline)
            } else {
                VStack {
                    Text("Your order has been received. You will receive an email confirmation of shipping details.")
                    if !product.notes.isEmpty {
                        Text("You added: '\(product.notes)' to your order.")
                    }
                    Text("Your order total is:")
                    Text(String(format: "%.2f", product.calculatePrice()))
                }
                .font(.headline)
            }
        }
        .padding(30)
    }
}

#Preview("Food") {
    OrderConfirmationView(product: Product(name: "PLACEBO DECAF", imageName: "placebo", description: "decaf coffee", price: 6.50, type: .food, temp: .hot, notes: "No sugar"))
}

#Preview("StoreItem") {
    OrderConfirmationView(product: Product(name: "MIIR 360 ALL-BLACK TRAVELER", imageName: "miir", description: "16 oz", price: 34, type: .storeItem))
}
