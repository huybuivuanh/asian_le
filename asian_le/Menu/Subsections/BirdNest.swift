//
//  BirdNest.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct BirdNestSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData
    
    var body: some View {

        // Bird Nest
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.birdNest, id: \.name) { bnest in
                if bnest.name == "Regular Bird Nest" {
                    VStack {
                        HStack {
                            Text(bnest.name)
                            Spacer()
                            Text("$\(bnest.price, specifier: "%0.2f")")
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
                } else {
                    HStack {
                        Text(bnest.name)
                        Spacer()
                        Text("$\(bnest.price, specifier: "%0.2f")")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                }
            }
            ImageSlides(images: data.birdNestImages)

        } label: {
            Text("Bird Nests & Special Noodles")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
