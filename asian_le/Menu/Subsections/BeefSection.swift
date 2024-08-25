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
    
    var body: some View {
        let data = MenuData()

        // Beef Dishes
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.beefDishes, id: \.name) { b in
                HStack {
                    Text(b.name)
                    Spacer()
                    Text(b.price)
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
