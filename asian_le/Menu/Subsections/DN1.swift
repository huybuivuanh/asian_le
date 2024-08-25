//
//  DN1.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct DN1Section: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // DN1
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("All dinner for ones come with sweet & sour sauce on the side")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            ForEach(data.dn1, id: \.name) { one in
                if one.name == "DN1A" {
                    VStack(spacing: 5) {
                        HStack {
                            Text(one.name)
                            Spacer()
                            Text(one.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nChicken Fried Rice\nMixed Vegetables\nChicken Balls")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else if one.name == "DN1B" {
                    VStack(spacing: 5) {
                        HStack {
                            Text(one.name)
                            Spacer()
                            Text(one.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nChicken Fried Rice\nChicken Chow Mein\nDry Ribs")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(one.name)
                            Spacer()
                            Text(one.price)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Egg Roll OR Spring Roll\nChicken Chow Mein\nDeep Fried Shrimps\nDry Ribs")
                                .font(.system(size: 15))
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
            ImageSlides(images: data.dn1Images)

        } label: {
            Text("Dinner For One")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
