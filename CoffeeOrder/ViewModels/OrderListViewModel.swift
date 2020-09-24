//
//  OrderListViewModel.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        
        fetchOrders()
    }
    
    func fetchOrders() {
        
        Webservice().getAllOrders { orders in
            
            if let orders = orders {
                
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
}
