//
//  OrderView.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-25.
//

import Foundation
import SwiftUI

struct OrderView: View {
    
    let data = MenuData()
    @ObservedObject var dataManager = DataManager()
    
    @State var total: Float = 0.0
    @State var numberOfItems = 0
        
    var menuData = MenuData()
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 10) {

                    HStack {
                        Spacer()
                        Text("Our Menu")
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .padding(.top)

                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Text("something")
                }
                .padding([.leading, .trailing])
            }
            
            Spacer()
            
            // Cart Button Docked at the Bottom
            NavigationLink(destination: CartView()) {
                HStack {
                    if (numberOfItems != 1) {
                        Text("Your Cart (\(numberOfItems) items)")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding([.leading, .trailing], 5)
                    } else {
                        Text("Your Cart (\(numberOfItems) item)")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding([.leading, .trailing], 5)
                    }
                    Text("$\(total, specifier: "%0.2f")")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(10)
                .background(Color.orange)
                .cornerRadius(10)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "F9DBBA"))
        .ignoresSafeArea()
    }
    
    init() {
        dataManager.getOrders()
    }
    
    func addItem(price: Float) {
        total += price
    }
    func placeOrder() {
        let name = "Loc"
        let number = "123456789"
        let items = ["com", "bun", "rau"]
        let status = "received"
        dataManager.saveOrder(customerName: name, phoneNumber: number, orderItems: items, totalAmount: total, orderStatus: status)
    }
}

