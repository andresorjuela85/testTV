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
                //.scaledToFit()
                .aspectRatio(2/3, contentMode: .fit)
                .hoverEffect(.highlight)
                
            //image.aspectRatio(contentMode: .fit)
            //image.hoverEffect(.highlight)
            //image.buttonStyle(.borderless)
            //image.frame(width: 200)
        } placeholder: {
            Color.white
        }
        

        /*
        Image("supermanPoster")
            .resizable()
            .aspectRatio(78/117, contentMode: .fit)
            .hoverEffect(.highlight)
            .buttonStyle(.borderless)

         */
    }
}

#Preview {
    PosterView(urlImage: "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg")
}
