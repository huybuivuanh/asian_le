//
//  SaladRoll.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct SaladRollSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {
        
        // Salad rolls list
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("Wrapped in rice paper with noodles & lettuce. Served with peanut sauce")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            ForEach(data.saladRolls, id: \.name) { roll in
                if roll.name != "Vegetarian Salad Rolls(4)" {
                    VStack {
                        HStack {
                            Text(roll.name)
                            Spacer()
                            Text("$\(roll.price, specifier: "%0.2f")")
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
                        Text(roll.name)
                        Spacer()
                        Text("$\(roll.price, specifier: "%0.2f")")
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                }
            }
            ImageSlides(images: data.saladRollImages)
        } label: {
            Text("Vietnamese Salad Rolls")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
