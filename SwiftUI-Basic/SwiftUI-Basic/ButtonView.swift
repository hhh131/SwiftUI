//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by 신희권 on 2023/03/06.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button{
            print("button Tapped")
        }label: {
            Text("Click Me")
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
