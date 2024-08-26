//
//  DN3.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DN3Section: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // DN3
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.dn3, id: \.name) { three in
                if three.name == "DN3A" {
                    VStack(spacing: 5) {
                        HStack {
                            Text(three.name)
                            Spacer()
                            Text("$\(three.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nWonton Soup\nDry Ribs, Chicken Balls\nChicken Fried Rice\nBeef Chow Mein")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(three.name)
                            Spacer()
                            Text("$\(three.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nWonton Soup\nDry Ribs, Sweet & Sour Pork\nChicken Fried Rice\nBeef Chow Mein")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
        } label: {
            Text("Dinner For Three")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
