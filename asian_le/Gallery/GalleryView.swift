//
//  GalaryView.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-15.
//

import Foundation
import SwiftUI


struct GalleryView: View {
    
    let img1 = ["Springrolls", "RNA", "DN1B", "Chicken Fried Rice", "Chicken Chow Mein", "Chicken Balls"]
    
    let img2 = ["Springrolls", "RNA", "Deluxe Wonton Soup", "Chicken Fried Rice", "Eggrolls", "Chicken Chow Mein", "FRIES & Chicken", "Thai Shrimp Soup", "DN1B", "Chicken Noodle Soup", "Beef & Broc", "Butter Fried Shrimp", "Sate Shrimp Noodle Soup", "Chicken Balls", "DN1A with a Spring Roll", "Mixed Veg", "LM CK", "SP Bnest", "BF BBS", "SP CS", "Sing ND", "Al Shr on rice", "HP5", "rolls", "Ginger on rice", "Coco Pork", "Shrimps"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Gallery")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundColor(.red)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                ImageSlides(images: img1)
                
                GalleryGrid(images: img2)
            }
            .padding([.leading, .trailing])
        }
        .background(Color(hex: "F9DBBA"))
        .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}
