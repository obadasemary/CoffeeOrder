//
//  AddCoffeeOrderView.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 25.09.2020.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    // MARK: - PROPERTIES
    
    @Binding var isPresented: Bool
    @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Form {
                    
                    Section(header: Text("INFORMATION").font(.body)) {
                        
                        TextField("Emter name", text: self.$addCoffeeOrderVM.name)
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        
                        ForEach(addCoffeeOrderVM.coffeeList, id:\.name) { coffee in
                            
                            CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
                        }
                    }
                    
                    Section(
                        header: Text("SELECT COFFEE")
                            .font(.body),
                        footer: OrderTotalView(total: self.addCoffeeOrderVM.total)
                    ) {
                        
                        Picker("", selection: self.$addCoffeeOrderVM.size) {
                            
                            Text("Small")
                                .tag("Small")
                            
                            Text("Medium")
                                .tag("Medium")
                            
                            Text("Large")
                                .tag("Large")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                HStack {
                    
                    Button(action: {
                        
                        self.addCoffeeOrderVM.placeOrder()
                        self.isPresented = false
                        
                    }, label: {
                        Text("Place Order")
                    })
                }
                .padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)
            }
            .navigationBarTitle("Add Order")
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(false))
    }
}
