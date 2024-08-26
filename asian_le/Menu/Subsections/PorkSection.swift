//
//  PorkSection.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct PorkSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Pork Dishes
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.porkDishes, id: \.name) { p in
                HStack {
                    Text(p.name)
                    Spacer()
                    Text("$\(p.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.porkDishesImages)

        } label: {
            Text("Pork Dishes")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
