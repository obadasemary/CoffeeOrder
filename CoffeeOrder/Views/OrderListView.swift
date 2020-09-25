//
//  OrderListView.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 25.09.2020.
//

import SwiftUI

struct OrderListView: View {
    
    // MARK: - PROPERTIES
    
    let orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        
        self.orders = orders
    }
    
    // MARK: - BODY
    
    var body: some View {
        
        List {
            
            ForEach(self.orders, id: \.id) { order in
                
                HStack {
                    
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(16)
                    
                    VStack {
                        
                        Text(order.name)
                            .font(.title)
                            .padding([.leading, .bottom], 10)
                        
                        HStack {
                            
                            Text(order.coffeeName)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                
                            Text(order.size)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "Obada", size: "Medium", coffeeName: "Regular", total: 3.0))])
    }
}
