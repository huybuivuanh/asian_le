//
//  Vermicelli.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct VermicelliSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Vermicelli list
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("All vermicelli comes with lettuce, cucumber, bean sprouts, peanuts & served with fish sauce")
                    .font(.system(size: 12))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            ForEach(data.vermicelli, id: \.name) { ver in
                if ver.name == "Vegetarian Vermicelli" || ver.name == "Spring Roll Vermicelli\n(With 2 Spring Rolls)" {
                    HStack {
                        Text(ver.name)
                            .font(.system(size: 16))
                        Spacer()
                        Text("$\(ver.price, specifier: "%0.2f")")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                } else {
                    VStack {
                        HStack {
                            Text(ver.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text("$\(ver.price, specifier: "%0.2f")")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text(data.meatChoice)
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
            ImageSlides(images: data.vermicelliImages)

        } label: {
            Text("Vermicelli")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
