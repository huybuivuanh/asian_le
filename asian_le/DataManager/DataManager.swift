//
//  DataManager.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-25.
//

import Foundation
import Firebase

class DataManager: ObservableObject {
    
    @Published var orders: [Order] = []
    
    // get reference to database
    private let db = Firestore.firestore()
    
    func getOrders(){
        // read a document
        db.collection("order").getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            // no error
            if let snapshot = snapshot {
                // Update list property in main the thread
                DispatchQueue.main.async {
                    self.orders = snapshot.documents.map { data in
                        return Order(
                            id: data.documentID,
                            customerName: data["customerName"] as? String ?? "",
                            phoneNumber: data["phoneNumber"] as? String ?? "",
                            orderItems: data["orderItems"] as? [String] ?? [],
                            totalAmount: data["totalAmount"] as? Double ?? 0.0,
                            orderStatus: data["orderStatus"] as? String ?? "",
                            timeStamp: (data["timeStamp"] as? Timestamp)?.dateValue() ?? Date()
                        )
                    }
                }
            }
        }
    }
    
    
    func saveOrder(customerName: String, phoneNumber: String, orderItems: [String], totalAmount: Float, orderStatus: String) {
        db.collection("order").addDocument(data: ["customerName": customerName, "phoneNumber": phoneNumber, "orderItems": orderItems, "totalAmount": totalAmount, "orderStatus": orderStatus, "timeStamp": Date()]) { error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                self.getOrders()
            }
        }
    }
    
    
}
