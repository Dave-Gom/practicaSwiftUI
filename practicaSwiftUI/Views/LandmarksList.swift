//
//  LandmarksList.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            .scrollIndicators(.hidden)
        }
        detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarksList()
}
