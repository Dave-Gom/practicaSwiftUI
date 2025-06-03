//
//  LandmarkDetail.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleView(image: landmark.image).offset(y: -200).padding(.bottom, -200)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .scrollIndicators(.hidden)
        .navigationTitle(landmark.name)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
