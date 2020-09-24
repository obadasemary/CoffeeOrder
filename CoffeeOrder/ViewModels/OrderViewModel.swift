//
//  OrderViewModel.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

class OrderViewModel: ObservableObject {
    
    var order: Order
    
    init(order: Order) {
        
        self.order = order
    }
    
    var name: String {
        
        return self.order.name
    }
    
    var size: String {
        
        return self.order.size
    }
    
    var coffeeName: String {
        
        return self.order.coffeeName
    }
    
    var total: Double {
        
        return self.order.total
    }
}
