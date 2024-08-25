//
//  RiceNoodleSoup.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct NoodleSoupSection: View {
    @Binding var isExpanded: Bool
    var body: some View {
        let data = MenuData()
        
        DisclosureGroup(isExpanded: $isExpanded) {
            HStack {
                Spacer()
                Text("All noodle soups come with mixed vegetables & bean sprouts")
                    .font(.system(size: 14))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            ForEach(data.noodleSoups, id: \.name) { noodleSoup in
                if noodleSoup.name == "Wonton Noodle Soup" {
                    HStack {
                        Text(noodleSoup.name)
                        Spacer()
                        Text(noodleSoup.price)
                            .foregroundColor(.red)
                            .fontWeight(.bold)
                    }
                } else {
                    VStack {
                        HStack {
                            Text(noodleSoup.name)
                            Spacer()
                            Text(noodleSoup.price)
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
            ImageSlides(images: data.noodleSoupImages)

        } label: {
            Text("Rice Noodle Soup")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
