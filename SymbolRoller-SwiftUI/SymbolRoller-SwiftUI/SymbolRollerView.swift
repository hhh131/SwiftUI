//
//  ContentView.swift
//  SymbolRoller-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    @State var imageName: String = "moon"
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Spacer()
            Text(imageName)
                .font(.system(size: 40,weight: .bold))
            Button{
                imageName = symbols.randomElement()!
            }label: {
                HStack{
                    Image(systemName: "arrow.3.trianglepath")
                    VStack{
                        Text("Reload")
                            .font(.system(size: 40, weight: .bold))
                            
                        Text("click me to Reload")
                    }
                }
              
            }
            .foregroundColor(.white)
            .frame(maxWidth:  .infinity ,maxHeight: 80)
            .background(.pink)
            .cornerRadius(40)
            .padding(.horizontal, 10.0)

        }
                                }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
