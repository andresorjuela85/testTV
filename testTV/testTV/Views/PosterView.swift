//
//  PosterView.swift
//  testTV
//
//  Created by Andres Orjuela on 20/05/25.
//

import SwiftUI

struct PosterView: View {
    
    var urlImage: String
    
    var body: some View {
        
    
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original/\(urlImage)")){ image in
            image
                .resizable()
                .aspectRatio(2/3, contentMode: .fit)
                .hoverEffect(.highlight)

        } placeholder: {
            Color.gray
                .aspectRatio(2/3, contentMode: .fit)
        }
    }
}

#Preview {
    PosterView(urlImage: "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg")
}
