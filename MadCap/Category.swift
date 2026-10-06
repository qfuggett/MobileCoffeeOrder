//
//  menuCategory.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//

enum menuCategory: String {
    case none
    case filterEspresso
    case espressoMilk
    case signature
    case tea
    case draftFood
    
    // order property so that items in forEach can be sorted by category
    var order: Int {
        switch self {
        case .none: return 0
        case .filterEspresso: return 1
        case .espressoMilk: return 2
        case .signature: return 3
        case .tea: return 4
        case .draftFood: return 5
        }
    }
}

enum storeCategory: String {
    case merch
    case equipment
    case coffee
    
    // order property so that items in forEach can be sorted by category
    var order: Int {
        switch self {
        case .merch: return 0
        case .equipment: return 1
        case .coffee: return 2
        }
    }
}
