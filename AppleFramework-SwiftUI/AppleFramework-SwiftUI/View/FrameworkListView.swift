
import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var vm =
    FrameworkListViewModel()
    
    let layout: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible())
   ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: layout) {
                    ForEach($vm.models) { $item in
                        FrameworkCell(framework: $item)
                            .onTapGesture {
                                vm.selectedItem = item
                                vm.isShowingDetail = true
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("AppleFramework⚽️")
          
        }
        .sheet(isPresented: $vm.isShowingDetail) {
            let vm = FrameworkDetailViewModel(framework: vm.selectedItem!)
            FrameworkDetailView(viewModel: vm)
        }


        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
