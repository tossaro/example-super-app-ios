import SwiftUI
import React

struct RCTRootViewWrapper : UIViewRepresentable {
  typealias UIViewType = RCTRootView

  func makeUIView(context: Context) -> RCTRootView {
    let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
    let userData:NSDictionary = ["scores": [
      ["name":"Alex", "value":"42"],
      ["name":"Joel", "value":"10"]
    ]]

    let rootView = RCTRootView(
      bundleURL: jsCodeLocation!,
      moduleName: "RNHighScores",
      initialProperties: userData as [NSObject: AnyObject],
      launchOptions: nil
    )
    return rootView
  }
  
  func updateUIView(_ uiView: RCTRootView, context: Context) {
    //not implemented
  }
}

struct RNContentView: View {
  var body: some View {
    VStack {
      RCTRootViewWrapper()
    }
  }
}

struct RNContentView_Previews: PreviewProvider {
  static var previews: some View {
    RNContentView()
  }
}
