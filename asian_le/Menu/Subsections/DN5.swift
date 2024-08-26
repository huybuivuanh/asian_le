//
//  DN5.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DN5Section: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // DN5
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.dn5, id: \.name) { five in
                VStack(spacing: 5) {
                    HStack {
                        Text(five.name)
                        Spacer()
                        Text("$\(five.price, specifier: "%0.2f")")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                    HStack {
                        Text("Egg Roll OR Spring Roll\nWonton Soup, Dry Ribs\nChicken Balls, Ginger Beef\nPork Chop Suey\nChicken Fried Rice\nBeef Chow Mein")
                            .font(.system(size: 15))
                            .foregroundColor(.red)
                        Spacer()
                    }
                }
            }
        } label: {
            Text("Dinner For Five")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
