//
//  FriedRice.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct FriedRiceSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Fried Rice
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.friedRice, id: \.name) { rice in
                HStack {
                    Text(rice.name)
                    Spacer()
                    Text("$\(rice.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.friedRiceImages)

        } label: {
            Text("Fried Rice")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
