//
//  ContentView.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarksList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            
        }
        .task {
            let center = UNUserNotificationCenter.current()
            
            _ = try? await center.requestAuthorization(options: [.alert, .badge, .sound])
        }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
