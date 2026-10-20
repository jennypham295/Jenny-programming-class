//
//  ContentView.swift
//  FiveShapesApp
//
//  Created by Phuong Khanh Pham on 9/21/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
 
    var body: some View {
        VStack {
            Text("Five Shapes")
                .font(.largeTitle)
            
            Button("Show Shapes") {
                Task {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
