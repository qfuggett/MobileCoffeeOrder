//
//  OrderConfirmationView.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/7/26.
//

import SwiftUI

struct OrderConfirmationView: View {
    var product: Product
    let panelMenu = Color(red: 232/255, green: 227/255, blue: 219/255)
    let backgroundColor = Color(red: 246/255, green: 243/255, blue: 239/255)
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
        .background(backgroundColor)

    }
}

#Preview("Food") {
    OrderConfirmationView(product: Product(name: "PLACEBO DECAF", imageName: "placebo", description: "decaf coffee", price: 6.50, type: .food, temp: .hot, notes: "No sugar"))
}

#Preview("StoreItem") {
    OrderConfirmationView(product: Product(name: "MIIR 360 ALL-BLACK TRAVELER", imageName: "miir", description: "16 oz", price: 34, type: .storeItem))
}
