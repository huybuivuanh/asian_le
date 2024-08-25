//
//  AboutUsView.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-15.
//

import Foundation
import SwiftUI


struct AboutUsView: View {
    let img = ["welcome", "door", "front1", "front2", "inside1", "inside2", "inside3", "storeSign"]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("About Asian Le Restaurant")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .padding(.top, 0)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.red)
                Text("Welcome to Asian Le, where we bring the rich flavors of Chinese and Vietnamese cuisine right to your table. Established in 2007, our family-operated restaurant has been a staple in Prince Albert for over a decade, offering a warm, welcoming atmosphere and a menu full of delicious, authentic dishes.")
                        .font(.system(size: 18))
                
                Text("At Asian Le, we take pride in using fresh ingredients to create flavorful meals that satisfy every craving. Whether you’re a fan of our crispy spring rolls, savory vermicelli, fragrant fried rice, or the classic dinner combos, there’s something on our menu for everyone. We’re committed to providing quick, friendly service and a dining experience that leaves you feeling full and happy.")
                        .font(.system(size: 18))
                
                Text("Join us and taste the difference that fresh, authentic cooking makes. Whether you’re dining in or ordering takeout, we’re here to make sure your meal is perfect, every time.")
                        .font(.system(size: 18))
                
                ImageSlides(images: img)
            }
            .padding(20)
        }
        .background(Color(hex: "F9DBBA"))
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
