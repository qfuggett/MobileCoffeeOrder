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
            VStack {
                Image("MADCAP")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .accessibilityLabel("Thanks for ordering at MADCAP!")
                Text("ORDER CONFIRMED")
                    .font(.headline)
                    .padding(10)
                Text("Thanks for your order!")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                ZStack {
                    RoundedRectangle(
                        cornerSize: CGSize(width: 5, height: 5),
                            style: .continuous
                        )
                        .fill(.white)
                        .frame(width: 300, height: 150)
                    Text("Your pickup order was sent to:\n1413 Farmer St\nDetroit, MI 48226\n888-866-9091")
                        .font(.subheadline)
                }
                .padding(10)
                Text("ORDER DETAILS")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(10)
            }
            if product.type == .food {
                Text("Your order has been sent to the kitchen.")
                
            } else {
                Text("Your order has been received. You will receive an email confirmation of shipping details.")
            }
            VStack {
                HStack {
                    // add forEach here to iterate through all Cart items
                    Image(product.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                    Text("x\(product.quantity)")
                        .padding(20)
                    VStack {
                        Text(product.name)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                        Text("Total: \(String(format: "%.2f", product.price))")
                        if !product.notes.isEmpty {
                            Text("You added: '\(product.notes)' to your order.")
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                Text("Total: \(String(format: "%.2f", product.calculatePrice()))")
                    .frame(maxWidth: .infinity, alignment: .leading) // leading left, trailing right; infinity takes all the width the parent offers
            }
            .font(.headline)
        }
        .padding(30)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(backgroundColor.ignoresSafeArea())

    }
}

#Preview("Food") {
    OrderConfirmationView(product: Product(name: "PLACEBO DECAF", imageName: "placebo", description: "decaf coffee", price: 6.50, type: .food, temp: .hot, notes: "No sugar"))
}

#Preview("StoreItem") {
    OrderConfirmationView(product: Product(name: "MIIR 360 ALL-BLACK TRAVELER", imageName: "miir", description: "16 oz", price: 34, type: .storeItem))
}
