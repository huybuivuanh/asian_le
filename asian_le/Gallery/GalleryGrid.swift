//
//  GalleryGrid.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-23.
//

import Foundation
import SwiftUI


struct GalleryGrid: View {
    let images: [String]
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        
        VStack(alignment: .center) {
            Text("Our Popular Dishes")
                .padding(.top, 20)
                .padding(.bottom, 30)
                .fontWeight(.bold)
                .font(.system(size: 30))
                .foregroundColor(.red)
            
            LazyVGrid(columns: columns) {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 130)
                        .cornerRadius(8)
                        .padding(.top, -50)
                        .padding(.bottom, 0)
                    }
                }
            .padding(.horizontal)
        }
        .background(Color(hex: "F6EACB"))
        .cornerRadius(10)

    }
}
