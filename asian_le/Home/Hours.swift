//
//  Hours.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-23.
//

import Foundation
import SwiftUI

struct Hours: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Business Hours")
                .font(.headline)
                .padding(.top, 0)
                .frame(maxWidth: .infinity)
            
            HStack {
                Text("Monday - Saturday")
                Spacer()
                Text("11:00AM - 8:00PM")
            }
            
            HStack {
                Text("Sunday & Holidays")
                Spacer()
                Text("Closed")
            }
        }
        .padding()
        .background(Color(hex: "F6EACB"))
        .cornerRadius(10)
    }
}
