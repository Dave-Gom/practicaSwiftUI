//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Dave Gomez on 2025-06-09.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView{
            VStack{
                CircleView(image: landmark.image.resizable(), dimentions: .init(width: 150, height: 150))
                        .scaledToFill()
                        
                
                Text(landmark.name)
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite){
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                
                Text(landmark.state)
                    .font(.caption)
                
                Divider()
                
                MapView(coordinate: landmark.locationCoordinate)
                                    .scaledToFit()
            }
            .padding(16)
        }
        .navigationTitle("Landmarks")

    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0]).environment(modelData)
}
