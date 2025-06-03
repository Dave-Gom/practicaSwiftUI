//
//  CircleView.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Image("turtlerock").resizable()
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
    CircleView()
}
