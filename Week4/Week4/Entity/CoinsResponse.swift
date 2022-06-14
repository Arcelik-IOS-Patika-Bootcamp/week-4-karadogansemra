//
//  CoinsResponse.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import Foundation

struct CoinsResponse: Codable {
    let status: String?
    let source: String?
    let sortBy: String?
    let currency: [CoinsModel]?
}
