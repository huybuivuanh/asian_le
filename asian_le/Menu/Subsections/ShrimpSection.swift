//
//  ShrimpSection.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct ShrimpSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Shrimp Dishes
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.shrimpDishes, id: \.name) { s in
                HStack {
                    Text(s.name)
                    Spacer()
                    Text("$\(s.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.shrimpDishesImages)

        } label: {
            Text("Shrimp Dishes")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
