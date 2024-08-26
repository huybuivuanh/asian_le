//
//  DN6.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DN6Section: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // DN6
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.dn6, id: \.name) { six in
                VStack(spacing: 5) {
                    HStack {
                        Text(six.name)
                        Spacer()
                        Text("$\(six.price, specifier: "%0.2f")")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                    HStack {
                        Text("Egg Roll OR Spring Roll\nWonton Soup, Sweet & Sour Pork\nChicken Balls, Ginger Beef\nPork Chop Suey\nChicken Fried Rice\nBeef Chow Mein")
                            .font(.system(size: 15))
                            .foregroundColor(.red)
                        Spacer()
                    }
                }
            }
        } label: {
            Text("Dinner For Six")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
