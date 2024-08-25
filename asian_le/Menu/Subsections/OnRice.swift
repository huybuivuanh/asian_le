//
//  OnRice.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct OnRiceSection: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // On Rice
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("All dishes come with mixed vegetables")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                Spacer()
            }
            ForEach(data.onRice, id: \.name) { on_rice in
                if on_rice.name == "Sate on Rice/Noodles" || on_rice.name == "Black Bean On Rice/Noodles" {
                    VStack {
                        HStack {
                            Text(on_rice.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(on_rice.price)
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
                } else if on_rice.name == "Sweet & Sour on Rice/Noodles" || on_rice.name == "Coconut on Rice/Noodles" {
                    VStack {
                        HStack {
                            Text(on_rice.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(on_rice.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Chicken OR Pork")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else if on_rice.name == "Ginger on Rice/Noodles" || on_rice.name == "Szechuan on Rice/Noodles" {
                    VStack {
                        HStack {
                            Text(on_rice.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(on_rice.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Chicken OR Beef OR Pork")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else if on_rice.name == "Almond on Rice/Noodles" {
                    VStack {
                        HStack {
                            Text(on_rice.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(on_rice.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Diced Chicken OR Diced Shrimp")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    HStack {
                        Text(on_rice.name)
                            .font(.system(size: 15))
                        Spacer()
                        Text(on_rice.price)
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                }
            }
            ImageSlides(images: data.onRiceImages)

        } label: {
            Text("Dishes On Steamed Rice/Noodles")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
