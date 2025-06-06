//
//  CategoryRow.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-05.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(items){ landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label : {
                            CategoryItem(landMark: landmark)
                        }
                        
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    CategoryRow(categoryName: landmarks[0].category.rawValue,
                items: Array(landmarks.prefix(3)))
}
