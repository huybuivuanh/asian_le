//
//  BeefSection.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct BeefSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Beef Dishes
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.beefDishes, id: \.name) { b in
                HStack {
                    Text(b.name)
                    Spacer()
                    Text("$\(b.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.beefDishesImages)

        } label: {
            Text("Beef Dishes")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
