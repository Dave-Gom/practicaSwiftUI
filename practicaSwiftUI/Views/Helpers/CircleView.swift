//
//  CircleView.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    
    var body: some View {
        image.resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fill)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
                
            }
            .shadow(radius:8)
    }
}

#Preview {
    CircleView(image: Image("turtlerock"))
}
