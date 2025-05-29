//
//  DetailTitleView.swift
//  testTV
//
//  Created by Andres Orjuela on 19/05/25.
//

import SwiftUI

struct DetailMainView: View {
    
    var focusField: Result?
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 10) {
                
                Text(focusField?.mediaType.rawValue ?? "")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text((focusField?.originalName ?? focusField?.originalTitle) ?? "")
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    Text("Duration")
                    Text("Year")
                    Text("Genres")
                    Text("Rating")
                }
                
                if let overview = focusField?.overview {
                    Text(overview)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .lineLimit(3)
                }
                
                HStack {
                    Text("Sources")
                    Text("Sources")
                    Text("Sources")
                }
            }
            .frame(width: geometry.size.width / 2)
            
        }
    }
}


#Preview {
    DetailMainView(
        focusField: Result(
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
