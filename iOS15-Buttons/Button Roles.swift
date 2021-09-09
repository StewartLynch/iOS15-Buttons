//
//  Button Roles.swift
//  Button Roles
//
//  Created by Stewart Lynch on 2021-09-06.
//

import SwiftUI

struct Button_Roles: View {
    @State private var showConfirmation = false
    var body: some View {
        VStack(spacing:20) {
            Text("Natural")
                .font(.title)
                .padding()
            
            // Destructive Button role
            Button(role: .destructive) {
                
            } label: {
                Label("Destructive", systemImage: "trash")
            }
            
            // Cancel Button role
            Button(role: .cancel) {
                
            } label: {
                Text("Cancel")
            }
            
            // No Button role
            Button {
                
            } label: {
                Text("No Role")
            }
            
            // Ask for Confirmation that you want to delete
            Button {
                showConfirmation.toggle()
            } label: {
                Label("Delete this Account", systemImage: "questionmark.circle")
            }
            .tint(.red)
            .confirmationDialog("Are you sure you want to delete this account?", isPresented: $showConfirmation, titleVisibility: .visible) {
                Button(role: .cancel) {
                    print("Operation Canceled")
                } label: {
                    Text("Cancel")
                }
                Button(role: .destructive) {
                    print("Account Deleted")
                } label: {
                    Text("OK")
                }
            }
            Spacer()
        }
        .buttonStyle(.bordered)
        .navigationTitle("Button Roles")
    }
}

struct Button_Roles_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Button_Roles()
        }
    }
}
