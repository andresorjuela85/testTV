//
//  GenrePostersView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 30/05/25.
//

import SwiftUI

struct GenrePostersView: View {
    
    @State var selectedIndex: Int? = 0
    @FocusState.Binding var focusField: Result?
    var results: [Result]
    
    var body: some View {

            VStack(alignment: .leading) {
                Text("TRENDING")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 40) {
                        
                        ForEach(results, id: \.self) { result in
                            
                            VStack {
                                NavigationLink(destination: DetailTitleView(id: result.id, type: result.mediaType?.rawValue ?? "", heightImage: 1)) {
                                    PosterView(urlImage: result.posterPath)
                                    
                                }
                                .containerRelativeFrame(.horizontal, count: 7, spacing: 40)
                                .buttonStyle(.borderless)
                                .focused($focusField, equals: result)
                            }
                        }
                    }
                }
                .scrollClipDisabled()
            }
            .padding(.vertical)
    }
}

/*
#Preview {
    GenrePostersView(results: [])
}
*/
