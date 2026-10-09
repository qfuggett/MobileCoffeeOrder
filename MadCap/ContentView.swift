import SwiftUI
import Playgrounds


struct ContentView: View {
    @State var selectedMenu: menuCategory? = nil

    let panelMenu = Color(red: 232/255, green: 227/255, blue: 219/255)
    let fontColor = Color(red: 33/255, green: 33/255, blue: 33/255)
    let backgroundColor = Color(red: 246/255, green: 243/255, blue: 239/255)
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack(alignment: .top) {
                    // logo & menu
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Image("MADCAP")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        Image(systemName: "line.3.horizontal")
                            .font(.title)
                    }
                }
                .background(backgroundColor)
                // overlapping panels
                // used a dictionary whose key is the label and whose value is content
                // keep things DRY
                ScrollView { // to scroll vertically within the entire app
                    VStack(spacing: -5) {
                        ForEach(menuItems.sorted { $0.key.order < $1.key.order }, id: \.key) { category, products in
                            // .sorted {} sorts dictionary items by $0 first dictionary and $1 second dictionary entry; so it's sorting by order property
                            MenuPanel(
                                label: category.rawValue.uppercased(),
                                category: category,
                                selectedMenu: $selectedMenu,
                                content: {
                                    AnyView(
                                        ScrollView(.horizontal){
                                            HStack {
                                                ForEach(products) { product in
                                                        NavigationLink {
                                                            CustomizationView(product: product, isFoodItem: product.type == .food)
                                                        } label: {
                                                            ProductCard(product: product)
                                                        }
                                                }
                                            }
                                        }
                                        .scrollContentBackground(.hidden)
                                    )
                                }
                            )
                            .padding(.horizontal, 20)
                        }
                        Text("MADCAPCOFFEE.COM   @MADCAPCOFFEE")
                            .padding(.vertical, 30)
                            .font(.caption)
                            .fontWeight(.medium)
                            .tracking(0.3) // letter spacing
                        // store data
                        VStack {
                            ForEach(storeItems.sorted { $0.key.order < $1.key.order }, id: \.key) { category, items in
                                ScrollView(.horizontal){
                                    HStack {
                                        ForEach(items) { item in
                                            NavigationLink {
                                                CustomizationView(product: item, isFoodItem: item.type == .food)
                                            } label: {
                                                ProductCard(product: item)
                                            }
                                        }
                                    }
                                }
                                .scrollContentBackground(.hidden)
                            }
                        }
                        .background(panelMenu)
                        .cornerRadius(12)
                        .shadow(radius: 4)
                        .padding(.horizontal, 20)
                        Text("ORDINARY. ELEVATED.")
                            .padding(.vertical, 30)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .tracking(0.2)
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)

                    .background(backgroundColor)
                }
                .scrollContentBackground(.hidden)
            }
            // bg color
            .background(backgroundColor)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}



/* Notes...
 There is a difference between these two:
 var body: some View {}
 var test: String = "hello"
 
 test has a stored property with =
 body has a computed property with {}
 
 computed properties are generated on demand
 by making body computed {}, the code can be re-run whenever something changes, but if body was a stored property, it would be frozen
 
 you can't do
 var body: some View = ContentView() because the View protocol requires that body is computed
 */
