//
//  OrderTotalView.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 25.09.2020.
//

import SwiftUI

struct OrderTotalView: View {
    
    // MARK: - PROPERTIES
    
    let total: Double
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            Spacer()
            
            Text(String(format: "$%.2f", self.total))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.pink)
            
            Spacer()
        }
        .padding(10)
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 45.65)
    }
}
