//
//  CallUs.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-23.
//

import Foundation
import SwiftUI

struct CallUs: View {
    var body: some View {
        VStack(alignment: .leading) {
            let attributedString: AttributedString = {
                var string = AttributedString("Please call us at (306) 764 - 7799 to order for pick up and go to SkipTheDishes to order for delivery.")
                
                if let range = string.range(of: "SkipTheDishes") {
                    string[range].foregroundColor = .orange
                    string[range].underlineStyle = .single
                }
                
                if let range = string.range(of: "(306) 764 - 7799") {
                    string[range].underlineStyle = .single
                    string[range].foregroundColor = .orange
                }
                
                return string
            }()
            
            Text(attributedString)
                .onTapGesture {
                    if let url = URL(string: "https://www.skipthedishes.com/asian-le-1400-6") {
                        UIApplication.shared.open(url)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color(hex: "F6EACB"))
        .cornerRadius(10)
    }
}
