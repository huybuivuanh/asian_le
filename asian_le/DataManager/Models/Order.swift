//
//  Order.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-25.
//

import Foundation

struct Order: Identifiable {
    var id: String
    var customerName: String
    var phoneNumber: String
    var orderItems: [String]
    var totalAmount: Double
    var orderStatus: String
    var timeStamp = Date()
}
