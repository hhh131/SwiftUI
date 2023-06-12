//
//  SwiftUiTutorialsApp.swift
//  SwiftUiTutorials
//
//  Created by 신희권 on 2023/06/12.
//

import SwiftUI
   
@main
struct SwiftUiTutorialsApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
