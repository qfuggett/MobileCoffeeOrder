import SwiftUI
import Playgrounds


struct ContentView: View {
    @State var selectedMenu: menuCategory? = nil

    let panelMenu = Color(red: 232/255, green: 227/255, blue: 219/255)
    let fontColor = Color(red: 33/255, green: 33/255, blue: 33/255)
    let backgroundColor = Color(red: 246/255, green: 243/255, blue: 239/255)
    
    var body: some View {
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
            // overlapping panels
            // used a dictionary whose key is the label and whose value is content
            // keep things DRY
            ForEach(menuItems.sorted { $0.key.rawValue < $1.key.rawValue }, id: \.key) { category, products in
                MenuPanel(
                    label: category.rawValue.uppercased(),
                    category: category,
                    selectedMenu: $selectedMenu,
                    content: {
                        AnyView(
                            LazyVGrid(columns: [GridItem(), GridItem()]) {
                                ForEach(products) { product in
                                    // Product image + name
                                }
                            }
                        )
                    }
                )
            }
            
        }
        // bg color
        Color(red: 246/255, green: 243/255, blue: 239/255)
            .ignoresSafeArea()
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
