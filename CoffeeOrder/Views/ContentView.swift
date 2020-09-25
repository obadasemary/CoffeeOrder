//
//  ContentView.swift
//  CoffeeOrder
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    @State private var showModel: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            OrderListView(orders: self.orderListVM.orders)
                .navigationBarTitle("Coffee Orders")
                .navigationBarItems(
                    leading:
                        Button(action: {
                            reloadOrders()
                        }, label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.pink)
                        }),
                    trailing:
                        Button(action: {
                            showAddCoffeeOrderView()
                        }, label: {
                            Image(systemName: "plus")
                                .foregroundColor(.pink)
                        })
                )
                .sheet(isPresented: self.$showModel, onDismiss: { reloadOrders() }, content: {
                    
                    AddCoffeeOrderView(isPresented: self.$showModel)
                })
        }
    }
    
    private func reloadOrders() {
        
        self.orderListVM.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        
        self.showModel = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
