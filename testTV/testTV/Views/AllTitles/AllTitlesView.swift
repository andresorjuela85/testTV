//
//  AllTitlesView.swift
//  testTV
//
//  Created by Andres Orjuela on 12/05/25.
//

import SwiftUI

struct AllTitlesView: View {
    
    @State var viewModel = AllTitlesViewModel()
    @FocusState var focusField: Result?
    
    
    
    var body: some View {
    
        NavigationView {
            
            TabView {
                ZStack(alignment: .top) {
                    BackgroundMainView(urlImage: focusField?.backdropPath ?? "", height: 8/13)
                    
                    InfoTitlesView(results: viewModel.results, focusField: $focusField)
                        
                    
                    
                    


                        
                    //DetailMainView()
                    
                }
                .tabItem {
                    Label("All", systemImage: "film.stack")
                }
                
                TitleView()
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
            
            //.background(.black)
            //.tabViewStyle(.sidebarAdaptable)
        }
        

            
    }
}

#Preview {
    AllTitlesView()
}
