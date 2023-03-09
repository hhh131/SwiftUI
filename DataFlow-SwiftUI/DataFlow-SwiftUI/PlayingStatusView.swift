//
//  PlayingStatusView.swift
//  DataFlow-SwiftUI
//
//  Created by 신희권 on 2023/03/09.
//

import SwiftUI

struct PlayingStatusView: View {
    @Binding  var isPlaying: Bool
    var body: some View {
        Image(systemName: isPlaying ? "sun.max.fill" : "sun.max")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}
