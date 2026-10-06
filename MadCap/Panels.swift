//
//  MenuPanel.swift
//  MadCap
//
//  Created by QueenTesa Fuggett on 10/5/26.
//
import SwiftUI

struct MenuPanel: View {
    var label: String
    var category: menuCategory
    @Binding var selectedMenu: menuCategory?
    var content: () -> AnyView
    
    var body: some View {
        VStack {
            Button(label) {
                selectedMenu = selectedMenu == category ? nil : category
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .padding(.horizontal, 12)
            .background(Color(red: 232/255, green: 227/255, blue: 219/255))
            .cornerRadius(12)
            .shadow(radius: 4)
            .foregroundColor(Color(red: 33/255, green: 33/255, blue: 33/255))
            .buttonStyle(.plain)
            
            if selectedMenu == category {
                content()
            }
        }
    }
}

struct StorePanel: View {
    var category: storeCategory
    @Binding var selectedMenu: storeCategory?
    var content: () -> AnyView
    
    var body: some View {
        VStack {
            HStack {
                
            }
            HStack {
                
            }
        }
    }
}
