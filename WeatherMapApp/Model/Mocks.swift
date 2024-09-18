//
//  Mocks.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 17/9/2024.
//

import Foundation
import CoreLocation

struct Mocks {
  static let suburbAnnotations: [SuburbAnnotation] = [
    SuburbAnnotation(
      coordinate: CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093),
      suburb: Suburb(name: "Sydney")
    ),
    SuburbAnnotation(
      coordinate: CLLocationCoordinate2D(latitude: -33.8144, longitude: 151.0052),
      suburb: Suburb(name: "Parramatta")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.8490, longitude: 151.1567),
        suburb: Suburb(name: "Chatswood")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.9200, longitude: 151.1852),
        suburb: Suburb(name: "Bondi")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.9208, longitude: 151.2254),
        suburb: Suburb(name: "Coogee")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.8011, longitude: 151.1615),
        suburb: Suburb(name: "Manly")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.7677, longitude: 150.9550),
        suburb: Suburb(name: "Blacktown")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.7376, longitude: 150.9369),
        suburb: Suburb(name: "Penrith")
    ),
    SuburbAnnotation(
        coordinate: CLLocationCoordinate2D(latitude: -33.8457, longitude: 151.2099),
        suburb: Suburb(name: "North Sydney")
    )
  ]
}
