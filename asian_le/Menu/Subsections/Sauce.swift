//
//  Sauce.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct SauceSection: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        // Sauce
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.sauce, id: \.name) { s in
                if s.name == "Peanut Sauce" {
                    HStack {
                        Text(s.name)
                        Spacer()
                        Text(s.large)
                            .font(.system(size: 15))
                            .foregroundColor(.red)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(s.name)
                            Spacer()
                        }
                        HStack {
                            HStack(spacing: 0) {
                                Text("Small ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(s.small)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                            HStack(spacing: 0) {
                                Text("Large ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(s.large)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                }
            }
        } label: {
            Text("Sauce")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
