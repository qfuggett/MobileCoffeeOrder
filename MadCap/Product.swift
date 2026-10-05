//
//  Product.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var price: Double
}
