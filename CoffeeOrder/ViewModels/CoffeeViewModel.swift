//
//  CoffeeViewModel.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 25.09.2020.
//

import Foundation

struct CoffeeViewModel {
    
    var coffee: Coffee
    
    init(coffee: Coffee) {
        
        self.coffee = coffee
    }
    
    var name: String {
        
        return self.coffee.name
    }
    
    var imageURL: String {
        
        return self.coffee.imageURL
    }
    
    var price: Double {
        
        return self.coffee.price
    }
}
