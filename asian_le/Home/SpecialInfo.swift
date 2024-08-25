//
//  SpecialInfo.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-23.
//

import Foundation
import SwiftUI

struct SpecialInfo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            let attributedString: AttributedString = {
                var string = AttributedString("Our daily lunch specials will be available from Monday to Friday from 11:00AM to 2:00PM. Please go to Menu to see today specials.")
                let patterns = ["Monday", "Friday", "11:00AM", "2:00PM"]
                
                for pattern in patterns {
                    if let range = string.range(of: pattern) {
                        string[range].underlineStyle = .single
                        string[range].foregroundColor = .purple
                    }
                }
                
                return string
            }()
            
            Text(attributedString)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.green)
                .frame(maxWidth: .infinity)
            
            
        }
        .padding()
        .background(Color(hex: "F6EACB"))
        .cornerRadius(10)
    }
}
