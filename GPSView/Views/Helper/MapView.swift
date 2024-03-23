//
//  MapView.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/16/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var there: CLLocationCoordinate2D
    var body: some View {
//        Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))

    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: there,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.25)
        )
    }
}

#Preview {
    MapView(there: CLLocationCoordinate2D(latitude: 5.6, longitude: 7.03 ))
  
}
