//
//  CoinModel.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import Foundation

struct CoinsModel: Codable {
    
    var id : String
    var symbol : String
    var name : String
    var image : String
    var currentPrice : Double
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case symbol = "symbol"
        case name = "name"
        case image = "image"
        case currentPrice = "current_price"
       

    }
    
}
/*struct CoinsModel: Codable {
    var name: String
    var image: String
    var currentPrice: Double
    var lastUpdated: String
    var priceChangePercentage24H: Double
    var marketCap, marketCapRank: Int
    var totalVolume: Double

    enum CodingKeys: String, CodingKey {
        case  name, image
        case currentPrice = "current_price"
        case lastUpdated = "last_updated"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case totalVolume = "total_volume"

    }
}*/
