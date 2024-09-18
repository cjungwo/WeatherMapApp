//
//  SuburbWeatherView.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import SwiftUI
import MapKit
import CoreData

struct SuburbWeatherView: View {
    @State private var weather: Weather? = nil
    let suburb: SuburbAnnotation
    let weatherService = WeatherService()

  @Environment(\.managedObjectContext) private var viewContext

  init(suburb: SuburbAnnotation) {
    self.suburb = suburb
  }

    var body: some View {
        VStack {
            Text(suburb.name)
                .font(.largeTitle)

            if let weather = weather {
                Text(weather.description)
                AsyncImage(url: URL(string: "https://openweathermap.org/img/w/\(weather.icon).png"))
            } else {
                Text("Fetching weather...")
            }

          Button
          {
              let favoriteSuburb = FavoriteSuburb(context: viewContext)
              favoriteSuburb.name = suburb.name
              favoriteSuburb.latitude = suburb.coordinate.latitude
              favoriteSuburb.longitude = suburb.coordinate.longitude

              do {
                  try viewContext.save()
              } catch {
                  print("Error saving favorite suburb: \(error)")
              }
          } label: {
              Text("Favorite this suburb")
          }
          .padding()

        }
        .onAppear {
            weatherService.fetchWeather(for: suburb.coordinate) { fetchedWeather in
                DispatchQueue.main.async {
                    self.weather = fetchedWeather
                }
            }
        }
    }
}


#Preview {
  SuburbWeatherView(suburb: SuburbAnnotation(coordinate: CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093), suburb: Suburb(name: "Sydney")))
}
