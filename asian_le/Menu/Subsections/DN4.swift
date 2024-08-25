//
//  DN4.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DN4Section: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // DN4
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.dn4, id: \.name) { four in
                if four.name == "DN4A" {
                    VStack(spacing: 5) {
                        HStack {
                            Text(four.name)
                            Spacer()
                            Text(four.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nWonton Soup, Dry Ribs\nChicken Balls, Pork Chop Suey\nChicken Fried Rice\nBeef Chow Mein")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(four.name)
                            Spacer()
                            Text(four.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nWonton Soup, Dry Ribs\nSweet & Sour Pork, Ginger Beef\nChicken Fried Rice\nBeef Chow Mein")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
        } label: {
            Text("Dinner For Four")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
