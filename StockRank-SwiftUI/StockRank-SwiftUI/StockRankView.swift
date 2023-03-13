

import SwiftUI

struct StockRankView: View {
    //@State var list = StockModel.list
    
    @StateObject var vm = StockRankViewModel()
   
    //
    //    viewMode
    //    - list
    //    - favorite
    //
    var body: some View {
        TabView{
            NavigationView{
                List($vm.models){ $item in
                    ZStack{
                        NavigationLink {
                            StockDetailView(viewModel: vm, stock: $item)
                        } label: {
                            EmptyView()
                        }
                        StockRankRow(stock: $item)
                    }
                    .listRowInsets(EdgeInsets())
                    .frame(height: 80)
                }
                .listStyle(.plain)
                .navigationTitle("Stock Rank")
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("주식 리스트")
            }
            
            NavigationView{
                List($vm.models){ $item in
                    ZStack{
                        NavigationLink {
                            StockDetailView(viewModel: vm, stock: $item)
                        } label: {
                            EmptyView()
                        }
                        StockRankRow(stock: $item)
                    }
                    .listRowInsets(EdgeInsets())
                    .frame(height: 80)
                    
                }
                .listStyle(.plain)
                .navigationTitle("Like Stock Rank")
            }
            .tabItem{
                Image(systemName: "heart.fill")
                Text("좋아요")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
            .preferredColorScheme(.dark)
    }
}
