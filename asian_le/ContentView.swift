//
//  ContentView.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-15.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        // Set the background color of the Tab Bar
        UITabBar.appearance().barTintColor = UIColor(Color(hex: "FFAD60"))
        UITabBar.appearance().isTranslucent = false
        
        // Set the unselected item color
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        

    }
    
    var body: some View {
        ZStack {
            Color(hex: "FFAD60").ignoresSafeArea()
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .frame(width: 130, height: 50)
                        .foregroundColor(.orange)
                    
                    Spacer()
                }
                
                .background(Color(hex: "FFAD60"))
                .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2)
                
                TabView {
                    
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    
                    MenuView()
                        .tabItem {
                            Label("Menu", systemImage: "list.bullet")
                        }
                    
                    AboutUsView()
                        .tabItem {
                            Label("About Us", systemImage: "person.circle.fill")
                        }
                    
                    GalleryView()
                        .tabItem {
                            Label("Gallery", systemImage: "photo.on.rectangle")
                        }

                }
                .accentColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
