//
//  HotPlate.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct HotPlateSection: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // Hot Plate
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("All hot plates come with mixed vegetables")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                Spacer()
            }
            ForEach(data.hotPlate, id: \.name) { hot in
                if hot.name == "Hot Plate 1: Sate Sauce" || hot.name == "Hot Plate 2: Black Bean Sauce" || hot.name == "Hot Plate 6: Thai Tom Yum Sauce" {
                    VStack {
                        HStack {
                            Text(hot.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(hot.price)
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
                } else if hot.name == "Hot Plate 3: Ginger Sauce" {
                    VStack {
                        HStack {
                            Text(hot.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(hot.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Ginger Beef OR Ginger Chicken")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else if hot.name == "Hot Plate 4: Coconut Sauce" {
                    VStack {
                        HStack {
                            Text(hot.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(hot.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Coconut Pork OR Coconut Chicken")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    VStack {
                        HStack {
                            Text(hot.name)
                                .font(.system(size: 15))
                            Spacer()
                            Text(hot.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Crispy Chicken & Beef & Pork")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
            ImageSlides(images: data.hotPlateImages)

        } label: {
            Text("Hot Plate")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
