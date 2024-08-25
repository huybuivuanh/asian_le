//
//  Soup.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI

struct SoupSection: View {
    @Binding var isExpanded: Bool
    
    var body: some View {
        let data = MenuData()

        
        // Soup list
        DisclosureGroup(isExpanded: $isExpanded) {
            ForEach(data.soups, id: \.name) { soup in
                if soup.name == "Wonton Soup" || soup.name == "Deluxe Wonton Soup" {
                    VStack(spacing: 5) {
                        HStack {
                            Text(soup.name)
                            Spacer()
                        }
                        HStack {
                            HStack(spacing: 0) {
                                Text("Small ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(soup.small)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                            HStack(spacing: 0) {
                                Text("Med ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(soup.medium)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                            HStack(spacing: 0) {
                                Text("Large ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(soup.large)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                } else {
                    VStack(spacing: 5) {
                        HStack {
                            Text(soup.name)
                            Spacer()
                        }
                        HStack {
                            HStack(spacing: 0) {
                                Text("Med ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(soup.medium)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                            HStack(spacing: 0) {
                                Text("Large ")
                                    .font(.system(size: 15))
                                    .foregroundColor(.green)
                                Text(soup.large)
                                    .font(.system(size: 15))
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                }
            }
            ImageSlides(images: data.soupImages)

        } label: {
            Text("Soups")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}
