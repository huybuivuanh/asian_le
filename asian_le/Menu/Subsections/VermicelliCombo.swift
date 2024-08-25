//
//  VermicelliCombo.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct VermicelliComboSection: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // Vermicelli Combo list
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("All vermicelli comes with lettuce, cucumber, bean sprouts, peanuts & served with fish sauce")
                    .font(.system(size: 12))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            ForEach(data.vermicelliCombo, id: \.name) { verCombo in
                VStack {
                    HStack {
                        Text(verCombo.name)
                        Spacer()
                        Text(verCombo.price)
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                    HStack {
                        Text("Chicken & Beef & Pork & Shrimp")
                            .font(.system(size: 15))
                            .foregroundColor(.red)
                        Spacer()
                    }
                }
            }
            ImageSlides(images: data.vermicelliComboImages)

        } label: {
            Text("Vermicelli Combo")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
