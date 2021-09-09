//
//  Location and Toggle Buttons.swift
//  Location and Toggle Buttons
//
//  Created by Stewart Lynch on 2021-09-06.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct Location_Button: View {
    // Waikiki
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.27851, longitude: -157.82997), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            Text("Mint")
                .font(.title)
                .padding()
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .frame(width: 400, height: 300)
            // overlay a LocationButton at the bottom trailing position∫
                .overlay(alignment: .bottomTrailing) {
                    LocationButton(.currentLocation) {
                      // Fetch location with Core Location.
                    }
                    .symbolVariant(.fill)
                    .labelStyle(.titleAndIcon)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .tint(.mint)
                    .padding()
                }
            Text(locationManager.statusString)
            if let coordinates = locationManager.locationCoordinates {
                Text("Your location: \(coordinates.latitude), \(coordinates.longitude)")
            }
            Spacer()
        }
        .navigationTitle("Location Button")
    }
}

struct Location_and_Toggle_Buttons_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location_Button()
        }
    }
}
