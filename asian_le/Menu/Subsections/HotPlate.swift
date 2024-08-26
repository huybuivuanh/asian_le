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
    let data: MenuData

    var body: some View {

        DisclosureGroup(isExpanded: $isExpanded) {
            headerView()

            ForEach(data.hotPlate, id: \.name) { hot in
                VStack {
                    itemView(for: hot)
                }
            }
            ImageSlides(images: data.hotPlateImages)
        } label: {
            Text("Hot Plate")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }

    private func headerView() -> some View {
        HStack {
            Spacer()
            Text("All hot plates come with mixed vegetables")
                .font(.system(size: 14))
                .foregroundColor(.red)
            Spacer()
        }
    }

    private func itemView(for hot: MenuItem) -> some View {
        VStack {
            HStack {
                Text(hot.name)
                    .font(.system(size: 15))
                Spacer()
                Text("$\(hot.price, specifier: "%0.2f")")
                    .foregroundColor(.red)
                    .fontWeight(.bold)
            }
            HStack {
                Text(subtitle(for: hot))
                    .font(.system(size: 15))
                    .foregroundColor(.red)
                Spacer()
            }
        }
    }

    private func subtitle(for hot: MenuItem) -> String {
        switch hot.name {
        case "Hot Plate 1: Sate Sauce", "Hot Plate 2: Black Bean Sauce", "Hot Plate 6: Thai Tom Yum Sauce":
            return "Chicken & Beef & Pork & Shrimp"
        case "Hot Plate 3: Ginger Sauce":
            return "Ginger Beef OR Ginger Chicken"
        case "Hot Plate 4: Coconut Sauce":
            return "Coconut Pork OR Coconut Chicken"
        default:
            return "Crispy Chicken & Beef & Pork"
        }
    }
}
