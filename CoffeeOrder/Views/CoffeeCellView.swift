//
//  CoffeeCellView.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 25.09.2020.
//

import SwiftUI

struct CoffeeCellView: View {
    
    // MARK: - PROPERTIES
    
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack {
            
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(16)
            
            Text(coffee.name)
                .font(.title)
                .padding([.leading], 20)
            
            Spacer()
            
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "")
                .padding()
        }
        .onTapGesture(count: 1, perform: {
            
            self.selection = self.coffee.name
        })
    }
}

struct CoffeeCellView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeCellView(coffee: CoffeeViewModel.init(coffee: Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 7.5)), selection: .constant("Cappuccino"))
    }
}
