//
//  Main.swift
//  App
//
//  Created by Jerry Yan on 12/23/18.
//

import Foundation

class Location: Codable {
    var longitude: Double
    var latitude: Double
    var altitude: Double?
    
    init(_ longitude: Double, _ latitude: Double, _ altitude: Double? = nil){
        self.longitude = longitude
        self.latitude = latitude
        self.altitude = altitude
    }
}
