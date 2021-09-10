//
//  Border Shapes.swift
//  Border Shapes
//
//  Created by Stewart Lynch on 2021-09-06.
//

import SwiftUI

struct Border_Shapes: View {
    var body: some View {
        VStack {
            Text("Cyan")
                .font(.title)
                .padding()
            // Capsule BorderShape
            Button {
                
            } label: {
                Text("Capsule BorderShape")
            }
            .buttonBorderShape(.capsule)
            // Rounded Rectangle BorderShape
            Button {
                
            } label: {
                Text("Rounded Rectangle BorderShape")
            }
            .buttonBorderShape(.roundedRectangle)
            .buttonStyle(.bordered)
            // Rounded Rectangle(radius) BorderShape
            Button {
                
            } label: {
                Text("Rounded Rectangle(radius) BorderShape")
            }
            .buttonBorderShape(.roundedRectangle(radius: 20))
            Spacer()
        }
        .buttonStyle(.borderedProminent)
        .tint(.cyan)
        .navigationTitle("Border Shapes")
    }
}

struct Border_Shapes_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Border_Shapes()
        }
        
        
    }
}
