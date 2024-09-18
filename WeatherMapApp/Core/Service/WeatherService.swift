//
//  WeatherService.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import Foundation
import CoreLocation

class WeatherService {
    let apiKey = "179292bc1ebda1af8c3e7d1e5b5af5ae"

    func fetchWeather(for coordinate: CLLocationCoordinate2D, completion: @escaping (Weather?) -> Void) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(coordinate.latitude)&lon=\(coordinate.longitude)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data, error == nil {
                if let response = try? JSONDecoder().decode(WeatherResponse.self, from: data) {
                    completion(response.weather.first)
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
