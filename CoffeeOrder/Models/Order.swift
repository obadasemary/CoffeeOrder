//
//  Order.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

struct Order: Codable {
    
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
}
