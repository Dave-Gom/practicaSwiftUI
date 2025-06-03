//
//  ContentView.swift
//  practicaSwiftUI
//
//  Created by Dave Gomez on 2025-06-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleView().offset(y: -200).padding(.bottom, -200)
            VStack(alignment: .leading) {
                Text("Turtle Rock!")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                Divider()
                
                Text("About turtle rock")
                    .font(.title2)
                
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
