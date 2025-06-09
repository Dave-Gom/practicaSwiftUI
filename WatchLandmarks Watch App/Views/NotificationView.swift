//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Dave Gomez on 2025-06-09.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    
    var body: some View {
        VStack{
            if let landmark {
                CircleView(image: landmark.image.resizable(), dimentions: .init(width: 150, height: 150))
                    
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
                
        }
    }
}

#Preview {
    NotificationView(
        title: "Turtle rock",
        message: "You are within 5 miles of turtle rock.",
        landmark: ModelData().landmarks.first
    )
}
