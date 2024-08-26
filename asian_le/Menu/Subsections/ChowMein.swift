//
//  ChowMein.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct ChowMeinSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Chow Mein
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("Served with fat noodles and bean sprouts")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                Spacer()
            }
            ForEach(data.chowMein, id: \.name) { chow_mein in
                HStack {
                    Text(chow_mein.name)
                    Spacer()
                    Text("$\(chow_mein.price, specifier: "%0.2f")")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            }
            ImageSlides(images: data.chowMeinImages)

        } label: {
            Text("Chow Mein")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
