//
//  MainTvView.swift
//  testTV
//
//  Created by Andres Orjuela on 12/05/25.
//

import SwiftUI

struct MainTvView: View {
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                
                AllTitlesView()
                    .tabItem {
                        Label("All", systemImage: "film.stack")
                    }
                
                MoviesView()
                    .tabItem {
                        Label("Movies", systemImage: "movieclapper.fill")
                    }
                
                ListView()
                    .tabItem {
                        Label("Series", systemImage: "tv")
                    }
                
                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
            }
            //.tabViewStyle(.sidebarAdaptable)
        }
    }
}

#Preview {
    MainTvView()
}
