
import SwiftUI

struct FrameworkListView: View {
    
    @State var list: [AppleFramework] = AppleFramework.list
    
    let layout: [GridItem] = [ GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())
                            ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: layout) {
                    ForEach(list) { list in
                        FrameworkCell(framework: list)
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("AppleFramework⚽️")
          
        }
     
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
