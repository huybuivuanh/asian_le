//
//  SideOrder.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct SideOrderSection: View {
    @Binding var isExpanded: Bool
    let data: MenuData

    var body: some View {

        // Side Order
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.sideOrder, id: \.name) { side in
                if side.name == "Fries & Chicken" || side.name == "Mixed Vegetables" {
                    HStack {
                        Text(side.name)
                        Spacer()
                        Text("$\(side.large, specifier: "%0.2f")")
                            .font(.system(size: 15))
                            .foregroundColor(.red)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(side.name)
                            Spacer()
                        }
                        HStack {
                            HStack(spacing: 0) {
                                Text("Small ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text("$\(side.small, specifier: "%0.2f")")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                            HStack(spacing: 0) {
                                Text("Large ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text("$\(side.large, specifier: "%0.2f")")
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                }
            }
            ImageSlides(images: data.sideOrderImages)

        } label: {
            Text("Side Order")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
