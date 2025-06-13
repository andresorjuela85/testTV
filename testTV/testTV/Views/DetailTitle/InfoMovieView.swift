//
//  InfoMovieView.swift
//  testTV
//
//  Created by Andres Orjuela on 19/05/25.
//

import SwiftUI
import Foundation

struct InfoMovieView: View {
    
    var movie: MovieDetail?

    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                
                Text((movie?.originalTitle) ?? "")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack {
                    Text(movie?.releaseDate ?? "")
                    Text(movie?.genres.first?.name ?? "")
                    Text(String(movie?.runtime ?? 0))
                    Text("Rating")
                }
                
                if let overview = movie?.overview {
                    Text(overview)
                        .font(.callout)
                        .fontWeight(.semibold)
                }
                
                HStack {
                    Text("Sources")
                    Text("Sources")
                    Text("Sources")
                }
                
                ScrollCustomView()

            }
            .frame(width: geometry.size.width/2)
        }
    }
}


#Preview {
InfoMovieView()
}

