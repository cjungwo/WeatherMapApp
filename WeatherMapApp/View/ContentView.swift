//
//  ContentView.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: FavoriteSuburb.entity(), sortDescriptors: []) private var favoriteSuburbs: FetchedResults<FavoriteSuburb>

    var body: some View {
        NavigationView {
            VStack {
                MapView()
                List {
                    ForEach(favoriteSuburbs, id: \.self) { suburb in
                        Text(suburb.name ?? "Unknown")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
