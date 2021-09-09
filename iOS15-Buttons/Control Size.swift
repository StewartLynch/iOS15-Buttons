//
//  Control Size.swift
//  Control Size
//
//  Created by Stewart Lynch on 2021-09-06.
//

import SwiftUI

struct Control_Size: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Indigo")
                .font(.title)
                .padding()
            
            // Large button
            Button {
                
            } label: {
                Text("Large")
            }
//            .controlSize(.large)
            // Regular button
            Button {
                
            } label: {
                Text("Regular")
            }
            .controlSize(.regular)
            // Mini button
            Button {
                
            } label: {
                Text("Mini")
            }
            .controlSize(.mini)
            // Small Bordered button
            Button {
                
            } label: {
                Text("Small")
            }
            .controlSize(.small)
            Spacer()
        }
        .buttonStyle(.bordered)
        .controlSize(.large)
        .tint(.indigo)
        .navigationTitle("Control Size")
    }
}

struct Control_Size_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Control_Size()
        }
        
    }
}
