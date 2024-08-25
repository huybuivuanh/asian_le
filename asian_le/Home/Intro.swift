//
//  Intro.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-23.
//

import Foundation
import SwiftUI

struct Intro: View {
    var body: some View {
        HStack {
            Spacer()
            Image("banner")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            
            Spacer()
        }
        .padding(.top, 15)
        
        
        HStack {
            Spacer()
            Image("bananaTree")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }
        .padding(.top, -40)
    }
}
