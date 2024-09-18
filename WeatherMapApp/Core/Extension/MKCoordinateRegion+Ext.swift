//
//  MKCoordinateRegion+Ext.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import Foundation
import MapKit

extension MKCoordinateRegion: Equatable {
    public static func == (lhs: MKCoordinateRegion, rhs: MKCoordinateRegion) -> Bool {
        lhs.center.latitude == rhs.center.latitude && lhs.center.longitude == rhs.center.longitude
    }
}
