import SwiftUI

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

/* My Notes..
 @main - an attribute that tells swift that this is the entry point. the OS looks for this and starts here.
 
 struct myApp: App  - the MyApp struct conforms to the Ap protocol, which requires you to implement body
 
 some - an opaque return type; it returns something/no specific type
 Scene - a protocol that returns a top-level container like a window, windowgroup, documentgroup, settings
 */
