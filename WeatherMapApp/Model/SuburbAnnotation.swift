//
//  SuburbAnnotation.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import Foundation
import MapKit

class SuburbAnnotation: NSObject, MKAnnotation, Identifiable {
  var coordinate: CLLocationCoordinate2D
  let id: String
  var name: String

  init(coordinate: CLLocationCoordinate2D, suburb: Suburb) {
    self.coordinate = coordinate
    self.id = suburb.id.uuidString
    self.name = suburb.name
  }
}
