//
//  Ebe.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/19/24.
//

import Foundation
import CoreLocation
import SwiftUI

struct Ebe : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var otherName: String
    var city: String
    var state: String
    var community: String
    var description: String
    
    private var geocoordinates: Geo
    struct Geo : Hashable, Codable {
       var latitude: Double
       var longitude: Double
    }
    
    var Location: CLLocationCoordinate2D {
     CLLocationCoordinate2D(
        latitude: geocoordinates.latitude,
        longitude: geocoordinates.longitude
     )
    }
    
    
    private var NameOfImage: String
    var image: Image {
        Image(NameOfImage)
 }
}
