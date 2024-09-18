//
//  WeatherResponse.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import Foundation

struct WeatherResponse: Decodable {
    let weather: [Weather]
}
