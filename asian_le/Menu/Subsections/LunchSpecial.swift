//
//  LunchSpecial.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-21.
//

import Foundation
import SwiftUI


struct LunchSpecialSection: View {
    @Binding var isExpanded: Bool
    let img = ["#1", "#2", "#3"]
    let data: MenuData
    
    
    var body: some View {

        // Lunch Specials
        DisclosureGroup(isExpanded: $isExpanded) {
            VStack(alignment: .leading, spacing: 10) {
                if(data.weekdayIndex == 1 || data.weekdayIndex == 7){
                    HStack {
                        Spacer()
                        Text("Available Monday to Friday")
                            .foregroundColor(.red)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                        Spacer()
                    }
                } else {
                    HStack {
                        Text(redText(data.dailySpecial.one))
                        Spacer()
                        Text("$10.95")
                            .foregroundColor(.red)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    HStack {
                        Text(redText(data.dailySpecial.two))
                        Spacer()
                        Text("$8.95")
                            .foregroundColor(.red)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    VStack(alignment: .leading) {
                        Text(redText("#3: Combo: Egg Roll OR Spring Roll, Chicken Fried Rice, Mixed Vegetables, and A CHOICE OF:"))
                        VStack(alignment: .leading) {
                            HStack() {
                                Text("Dry Ribs")
                                    .foregroundColor(.green)
                                    .font(.system(size: 17))
                                Spacer()
                                Text("$11.95")
                                    .foregroundColor(.red)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Text("Chicken Balls")
                                .foregroundColor(.green)
                                .font(.system(size: 17))
                            Text(data.dailySpecial.choice3)
                                .foregroundColor(.green)
                                .font(.system(size: 17))
                        }
                        .padding(.leading, 8)
                    }
                    ImageSlides(images: img)
                }
            }
        } label: {
            VStack(spacing: 3) {
                if(data.weekdayIndex == 1 || data.weekdayIndex == 7){
                    Text("Daily Lunch Specials")
                        .foregroundColor(Color(hex: "AD49E1"))
                        .fontWeight(.bold)
                        .font(.system(size: 19))
                } else {
                    Text("Daily Lunch Specials (\(data.dailySpecial.day))")
                        .foregroundColor(Color(hex: "AD49E1"))
                        .fontWeight(.bold)
                        .font(.system(size: 19))
                    Text("11:00AM - 2:00PM")
                        .foregroundColor(.red)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }
            }
        }
    }
}

func redText(_ s: String) -> AttributedString{
    var string = AttributedString(s)
    let patterns = ["#1:", "#2:", "#3:", "OR", "A CHOICE OF"]
    
    for pattern in patterns {
        if let range = string.range(of: pattern) {
            string[range].foregroundColor = .red
            string[range].font = Font.system(size: 17, weight: .bold)
        }
    }
    return string
}
