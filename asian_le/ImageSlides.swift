//
//  ImageSlides.swift
//  asian_le
//
//  Created by Bùi Vũ Anh Huy on 2024-08-22.
//

import Foundation
import SwiftUI

struct ImageSlides: View {
    let images: [String]
    
    @State private var currentIndex = 0
    @State private var timer: Timer?
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                TabView(selection: $currentIndex) {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFit()
                            .tag(index)
                            .frame(maxWidth: .infinity, maxHeight: 300)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .frame(height: 300)
                .onAppear {
                    startTimer()
                }
                .onDisappear {
                    stopTimer()
                }
                
                // Overlay arrows directly on the image
                HStack {
                    if currentIndex > 0 {
                        Image(systemName: "chevron.left")
                            .padding()
                            .background(Color.black.opacity(0.8))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture {
                                previousImage()
                            }
                            .zIndex(1)
                    }
                    
                    Spacer()
                    
                    if currentIndex < images.count - 1 {
                        Image(systemName: "chevron.right")
                            .padding()
                            .background(Color.black.opacity(0.8))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .onTapGesture {
                                nextImage()
                            }
                            .zIndex(1)
                    }
                }
                .padding(.horizontal, 16)
            }
            HStack(spacing: 8) {
                ForEach(0..<images.count, id: \.self) { index in
                    Circle()
                        .fill(index == currentIndex ? Color.primary : Color.secondary)
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.top, -10)
        }
    }
    
    // Start the timer to automatically change images
    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            nextImage()
        }
    }
    
    // Stop the timer when the view disappears
    private func stopTimer() {
        timer?.invalidate()
    }
    
    // Move to the next image, or reset to the first one if at the end
    private func nextImage() {
        withAnimation {
            currentIndex = (currentIndex + 1) % images.count
        }
    }
    
    // Move to the previous image
    private func previousImage() {
        withAnimation {
            currentIndex = currentIndex > 0 ? currentIndex - 1 : images.count - 1
        }
    }
}

#Preview {
    ContentView()
}
