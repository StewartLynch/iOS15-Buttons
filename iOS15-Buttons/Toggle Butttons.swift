//
//  Toggle Butttons.swift
//  Toggle Butttons
//
//  Created by Stewart Lynch on 2021-09-07.
//

import SwiftUI

struct Toggle_Butttons: View {
    @State private var isOn = true
    @State private var isActive = true
    var body: some View {
        VStack {
            Text("Brown")
                .font(.title)
                .padding()
            
            // Switch ToggleStyle
            Toggle(isOn: $isOn) {
                Text("The button is \(isOn ? "ON" : "OFF")")
            }
            // Button ToggleStyle
            HStack {
                Toggle(isOn: $isActive) {
                    Image(systemName: isActive ? "bolt.circle.fill" : "bolt.slash.circle")
                        .font(.title)
                }
                .toggleStyle(.button)
                Text("Power is \(isActive ? "Active" : "Inactive")")
                Spacer()
            }
            Spacer()
        }
        .padding()
        .tint(.brown)
        .navigationTitle("Toggle Button")
    }
}

struct Toggle_Butttons_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Toggle_Butttons()
        }
    }
}
