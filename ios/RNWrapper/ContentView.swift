import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView{
      VStack {
        Text("Hello, world!")
        NavigationLink(destination: RNContentView()){
          Text("RNContentView")
        }
      }
      .navigationTitle("Home")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
