//
//  CircleView.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    var dimentions: Dimentions = Dimentions(width: 300, height: 300)
    
    var body: some View {
        image.resizable()
            .frame(width: dimentions.width,height: dimentions.height)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fill)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius:8)
    }
    
    class Dimentions: NSObject {
        var width: CGFloat
        var height: CGFloat
        
        init(width: CGFloat, height: CGFloat) {
            self.width = width
            self.height = height
        }
    }
}

#Preview {
    CircleView(image: Image("turtlerock"))
}
