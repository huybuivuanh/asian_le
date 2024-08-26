//
//  Appetizers.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI


struct AppetizerSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {
        // Appetizer list
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.appetizers, id: \.name) { appetizer in
                HStack {
                    Text(appetizer.name)
                    Spacer()
                    Text("$\(appetizer.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.appetizerImages)
        } label: {
            Text("Appetizers")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
