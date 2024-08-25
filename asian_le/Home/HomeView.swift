//
//  HomeView.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-15.
//

import Foundation
import SwiftUI

struct HomeView: View {
    let specials = ["#1", "#2", "#3"]
        var body: some View {
            
            ScrollView {
                
                Intro()
                
                VStack(spacing: 10) {
                    Text("Chào Mừng Quý Khách\nChinese & Vietnamese Cuisine")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.top, -10)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.red)
                    
                    SpecialInfo()
                    
                    ImageSlides(images: specials)
                                                    
                    Hours()
                    
                    Contact()
                    
                    CallUs()
                    
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
