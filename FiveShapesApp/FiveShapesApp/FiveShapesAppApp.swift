//
//  FiveShapesAppApp.swift
//  FiveShapesApp
//
//  Created by Phuong Khanh Pham on 9/21/26.
//

import SwiftUI

@main
struct FiveShapesAppApp: App {
    @State private var appModel = AppModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.4, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
        .environment(AppModel())
}
