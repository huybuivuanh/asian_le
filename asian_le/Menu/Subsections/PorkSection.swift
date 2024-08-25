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
    
    var body: some View {
        let data = MenuData()

        // Pork Dishes
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.porkDishes, id: \.name) { p in
                HStack {
                    Text(p.name)
                    Spacer()
                    Text(p.price)
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
