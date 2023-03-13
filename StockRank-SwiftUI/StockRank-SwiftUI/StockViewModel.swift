//
//  StockViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 신희권 on 2023/03/13.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        models.filter{ $0.isFavorite }.count
    }
}
