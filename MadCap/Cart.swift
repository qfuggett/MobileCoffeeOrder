//
//  Cart.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/14/26.
//
import SwiftUI
import Observation

@Observable
class Cart {
    var items: [Product] = []
    
    func add(_ product: Product) {
        var item = product
        item.id = UUID()
        items.append(item)
    }
    
    // add price of all product items here for total cart
//    function totalPrice() {
//        item.
//    }
}
