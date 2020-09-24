//
//  Webservice.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

class Webservice {
    
    let path = "https://island-bramble.glitch.me/"
    let orders = "orders"
    
    func getAllOrders(completion: @escaping ([Order]?) -> ()) {
        
        let fullPath = path + orders
        
        guard let url = URL(string: fullPath) else {
            
            DispatchQueue.main.async {
                
                completion(nil)
            }
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            
            guard let data = data, error == nil else {
                
                DispatchQueue.main.async {
                    
                    completion(nil)
                }
                return
            }
            
            let orders = try? JSONDecoder().decode([Order].self, from: data)
            DispatchQueue.main.async {
                
                completion(orders)
            }
        }.resume()
    }
}
