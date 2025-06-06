//
//  ProfileSummary.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-06.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)

                Text(
                    "Notifications: \(profile.prefersNotifications ? "On": "Off" )"
                )
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Hike")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Third Hike")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                    }
                    .padding(.bottom)
                }
                
                Divider()
                
                VStack (alignment: .leading){
                    Text("Recent Hike")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: .default).environment(ModelData())
}
