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
    
    var body: some View {
        let data = MenuData()
        
        // Appetizer list
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.appetizers, id: \.name) { appetizer in
                HStack {
                    Text(appetizer.name)
                    Spacer()
                    Text(appetizer.price)
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
