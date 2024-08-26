//
//  ChopSuey.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct ChopSueySection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Chop Suey
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("Mixed vegetables and bean sprouts")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                Spacer()
            }
            ForEach(data.chopSuey, id: \.name) { chop_suey in
                HStack {
                    Text(chop_suey.name)
                    Spacer()
                    Text("$\(chop_suey.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.chopSueyImages)

        } label: {
            Text("Chop Suey")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
