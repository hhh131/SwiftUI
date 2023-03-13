//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by 신희권 on 2023/03/09.
//

import SwiftUI


struct StockRankRow: View {
    
   @Binding var stock: StockModel
  @State var isClicked: Bool = false
    var body: some View {
        HStack{
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold))
                .frame(width: 30)
                .foregroundColor(.blue)
            Image("\(stock.imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 5){
                Text("\(stock.name)")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                HStack{
                    Text("\(stock.price)")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("+\(stock.diff , specifier: "%.2f") % ")
                        .font(.system(size: 12))
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                }
            }
            Spacer()
                        Image(systemName: "heart.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(stock.isFavorite ? .pink : .gray)
                    }
        .padding()
        .frame(maxWidth: .infinity, maxHeight:  .infinity)
        .background(.black)
    }
}

struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow(stock: .constant(StockModel.list[0]) )
            .previewLayout(.fixed(width: 390, height: 80))
        
    }
}
