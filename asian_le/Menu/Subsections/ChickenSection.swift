//
//  ChickenSection.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct ChickenSection: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // Chicken Dishes
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.chickenDishes, id: \.name) { c in
                HStack {
                    Text(c.name)
                    Spacer()
                    Text(c.price)
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.chickenDishesImages)

        } label: {
            Text("Chicken Dishes")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
