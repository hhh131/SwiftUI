//
//  ContentView.swift
//  SwiftUiTutorials
//
//  Created by 신희권 on 2023/06/12.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
