//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Dave Gomez on 2025-06-09.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarksList()
        }
        .padding()
        .task {
            let center = UNUserNotificationCenter.current()
            
            _ = try? await center.requestAuthorization(options: [.alert, .badge, .sound])
        }
        
    }
}

#Preview {
    ContentView().environment(ModelData())
}

