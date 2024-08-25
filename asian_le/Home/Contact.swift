//
//  Contact.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-23.
//

import Foundation
import SwiftUI

struct Contact: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Contact us")
                .font(.headline)
                .padding(.top, 0)
                .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                Image(systemName: "phone.fill")
                    .foregroundColor(.blue)
                Text("Phone: (306) 764 - 7799")
            }
            
            HStack {
                Image(systemName: "envelope.fill")
                    .foregroundColor(.blue)
                
                let attributedString: AttributedString = {
                    var string = AttributedString("Email: asianlepa@gmail.com")
                    
                    if let range = string.range(of: "asianlepa@gmail.com") {
                        string[range].foregroundColor = .orange
                        string[range].underlineStyle = .single
                    }
                    
                    return string
                }()
                Text(attributedString)
            }
            
            HStack {
                Image(systemName: "globe")
                    .foregroundColor(.blue)
                
                let attributedString: AttributedString = {
                    var string = AttributedString("Website: asianle.ca")
                    
                    if let range = string.range(of: "asianle.ca") {
                        string[range].foregroundColor = .orange
                        string[range].underlineStyle = .single
                    }
                    
                    return string
                }()
                Text(attributedString)
            }
            
            
            HStack(alignment: .top) {
                Image(systemName: "map.fill")
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text("Address: 3-1400 6th Avenue East")
                    Text("Prince Albert, SK, S6V 2K2")
                }
            }
        }
        .padding()
        .background(Color(hex: "F6EACB"))
        .cornerRadius(10)
    }
}
