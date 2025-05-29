//
//  TitlesBeginningView.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 29/05/25.
//

import SwiftUI

struct TitlesBeginningView: View {
    
    let listData: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var results: [Result]
    var focusField: Result?
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                TabView {
                    ForEach(results, id: \.self) { result in
                        
                        ZStack(alignment: .topLeading) {
                            BackgroundMainView(urlImage: result.backdropPath, height: 1)
                                .frame(height: geometry.size.height)
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text(result.mediaType.rawValue)
                            //Text(result)
                            .font(.title2)
                               .fontWeight(.semibold)
                            
                            Text((result.originalName ?? result.originalTitle) ?? "")
                              .font(.title)
                             .fontWeight(.bold)
                            
                            HStack {
                                Text("Duration")
                                Text("Year")
                                Text("Genres")
                                Text("Rating")
                            }
                            
                            //if let overview = result.overview {
                            Text(result.overview)
                                  .font(.callout)
                                .fontWeight(.semibold)
                            //}
                            
                            HStack {
                                Text("Sources")
                                Text("Sources")
                                Text("Sources")
                            }
                            
                            Button {
                                //
                            } label: {
                                Text("See more")
                            }
                        }
                        .frame(width: geometry.size.width * 0.6)
                        //.padding(.horizontal, 50)
                        }
                        //.ignoresSafeArea()
                        .frame(width: geometry.size.width)
                        
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            }
        }
    }
}

#Preview {
    TitlesBeginningView(
        results: [Result(
            backdropPath: "/uQ4lG7E7mlyKsGvbASftQ6Hu2IX.jpg",
            id: 100088,
            name: "The Last of Us",
            originalName: "The Last of Us",
            overview: "Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival.",
            posterPath: "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg",
            mediaType: MediaType.tv,
            adult: false,
            originalLanguage: OriginalLanguage.en,
            genreIDS: [18],
            popularity: 393.9559,
            firstAirDate: "2023-01-15",
            voteAverage: 8.554,
            voteCount: 6056,
            originCountry: ["US"],
            title: "",
            originalTitle: "",
            releaseDate: "",
            video: false
        )], focusField: Result(
        backdropPath: "/uQ4lG7E7mlyKsGvbASftQ6Hu2IX.jpg",
        id: 100088,
        name: "The Last of Us",
        originalName: "The Last of Us",
        overview: "Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival.",
        posterPath: "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg",
        mediaType: MediaType.tv,
        adult: false,
        originalLanguage: OriginalLanguage.en,
        genreIDS: [18],
        popularity: 393.9559,
        firstAirDate: "2023-01-15",
        voteAverage: 8.554,
        voteCount: 6056,
        originCountry: ["US"],
        title: "",
        originalTitle: "",
        releaseDate: "",
        video: false
    )
    )
}
