import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}

/*
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
