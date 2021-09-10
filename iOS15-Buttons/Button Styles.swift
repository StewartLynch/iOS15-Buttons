//
//  Button Styles.swift
//  Button Styles
//
//  Created by Stewart Lynch on 2021-09-06.
//

import SwiftUI

struct Button_Styles: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Teal")
                .font(.title)
                .padding()
            
            // Borderless button style
            Button {
                
            } label: {
                Text("Borderless ButtonStyle")
            }
            .buttonStyle(.borderless)
            
            // Bordered button style
            Button {
                
            } label: {
                Text("Bordered ButtonStyle")
            }
            .buttonStyle(.bordered)
            // Bordered Prominent button style
            Button {
                
            } label: {
                Text("Bordered Prominent ButtonStyle")
            }
            .buttonStyle(.borderedProminent)
            // Plain button Style
            Button {
                
            } label: {
                Text("Plain ButtonStyle")
            }
            .buttonStyle(.plain)
            Spacer()
        }
        .tint(.teal)
        .navigationTitle("Button Styles")
    }
}

struct Button_Styles_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Button_Styles()
        }
        
    }
}
