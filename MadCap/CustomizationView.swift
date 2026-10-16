//
//  CustomizationView.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/6/26.
//

import SwiftUI

struct CustomizationView: View {
    @State var product: Product
    //    @State var customerName: String = ""
    @Environment(Cart.self) var cart
    var isFoodItem: Bool = true
    var isSpecialFood: String = ""
    let panelMenu = Color(red: 232/255, green: 227/255, blue: 219/255)
    let backgroundColor = Color(red: 246/255, green: 243/255, blue: 239/255)

    
    var body: some View {
        VStack {
            VStack {
                if isFoodItem {
                    Text("$\(String(format: "%.2f", product.price))")
                        .font(.title)
                    Image(product.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                    Text(product.name)
                        .font(.headline)
                    Text(product.description)
                        .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                    if isSpecialFood != "DRAFT & FOOD" {
                        VStack {
                            Text("TEMPERATURE")
                                .padding(10)
                            Picker("Hot or Iced?", selection: $product.temp) {
                                Text("Hot").tag(Temperature.hot) // these reference the enum
                                Text("Iced").tag(Temperature.iced)
                            }
                            .pickerStyle(.segmented)
                        }
                    }
                    if isSpecialFood == "EXPRESSO + MILK" {
                        VStack {
                            Text("MILK")
                                .padding(10)
                            Picker("Choose your milk:", selection: $product.milk) {
                                Text("Whole").tag(Milk.whole)
                                Text("2%").tag(Milk.reduced) // these reference the enum
                                Text("Oat").tag(Milk.oat)
                            }
                            .pickerStyle(.segmented)
                        }
                    }
                } else {
                    Image(product.imageName)
                        .resizable()
                        .scaledToFit()
                    //                TextField("Enter a customer name", text: $customerName)
                    Text(product.name)
                        .font(.headline)
                    Text(product.description)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            VStack {
                Stepper("QUANTITY: \(product.quantity)", value: $product.quantity, in: 1...10)
                    .padding(10)
                Text("ORDER NOTES")
                    .padding(10)
                TextField("Any notes?", text: $product.notes)
                    .padding(10)
                Button("ADD TO CART") {
                    cart.add(product)
                }
                .padding()
                .glassEffect()
            }
        }
        .padding(30)
        .background(panelMenu)
    }
}

#Preview("Food Item") {
    CustomizationView(product: Product(name: "PLACEBO DECAF", imageName: "placebo", description: "decaf coffee", price: 6.50, type: .food, temp: .hot, milk: .reduced, notes: "No sugar please"))
        .environment(Cart())
}

#Preview("Store Item") {
    CustomizationView(product: Product(name: "LELIT BIANCA", imageName: "lelit", description: "very expensive at-home barista equipment for the connosieur", price: 1_500, type: .storeItem), isFoodItem: false)
        .environment(Cart())
}
