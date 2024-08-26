//
//  DN2.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DN2Section: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // DN2
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.dn2, id: \.name) { two in
                if two.name == "DN2A" {
                    VStack(spacing: 5) {
                        HStack {
                            Text(two.name)
                            Spacer()
                            Text("$\(two.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nDry Ribs, Chicken Balls\nChicken Fried Rice\nBeef Chow Mein")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(two.name)
                            Spacer()
                            Text("$\(two.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nDry Ribs, Sweet & Sour Pork\nChicken Fried Rice\nBeef Chow Mein")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
        } label: {
            Text("Dinner For Two")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
