//
//  OrderListViewModel.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    var orders = [OrderViewModel]()
    
    func fetchOrders() {
        
        Webservice().getAllOrders { orders in
            
            if let orders = orders {
                
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
}
