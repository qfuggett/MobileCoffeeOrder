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
    @State var showingSheet: Bool = false
    @State var notes: String = ""

    var body: some View {
        VStack {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
//                TextField("Enter a customer name", text: $customerName)
            Text(product.name)
                .font(.headline)
                VStack {
                    Text("TEMPERATURE")
                    Picker("Hot or Iced?", selection: $product.temp) {
                        Text("Hot").tag(Temperature.hot) // these reference the enum
                        Text("Iced").tag(Temperature.iced)
                    }
                    .pickerStyle(.segmented)
                }
                VStack {
                    Text("MILK")
                    Picker("Choose your milk:", selection: $product.milk) {
                        Text("Whole").tag(Milk.whole)
                        Text("2%").tag(Milk.reduced) // these reference the enum
                        Text("Oat").tag(Milk.oat)
                    }
                    .pickerStyle(.segmented)
                }
            }
            .sheet(isPresented: $showingSheet) {
                OrderConfirmationView(product: Product(name: product.name, imageName: product.imageName, description: product.description, price: product.price, type: product.type, temp: product.temp, notes: product.notes ))
            }
        Text("ORDER NOTES")
        TextField("Any notes?", text: $notes)
        Button("Order") {
            showingSheet = true
        }
        }
    func updateOrder() {
        if !notes.isEmpty {
            product.notes = notes
        }
    }
    }

#Preview {
    CustomizationView(product: Product(name: "PLACEBO DECAF", imageName: "test", description: "decaf coffee", price: 6.50, type: .product, temp: .hot, notes: "No sugar"))
}
