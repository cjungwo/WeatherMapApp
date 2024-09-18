//
//  MapView.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import SwiftUI
import MapKit
import CoreData

struct MapView: View {
    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: .init(latitude: -33.8837, longitude: 151.2006), span: .init(latitudeDelta: 0.1, longitudeDelta: 0.1))

    private var viewContext: NSManagedObjectContext = PersistenceController.shared.container.viewContext

    var body: some View {
      Map(coordinateRegion: $region, annotationItems: Mocks.suburbAnnotations) { suburb in
            MapAnnotation(coordinate: suburb.coordinate) {
              NavigationLink {
                SuburbWeatherView(suburb: suburb)
              } label: {
                VStack {
                    Text(suburb.name)
                        .font(.caption)
                        .foregroundColor(.black)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.title)
                }
              }

            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MapView()
}

