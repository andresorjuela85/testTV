//
//  BackgroundMainView.swift
//  testTV
//
//  Created by Andres Orjuela on 21/05/25.
//

import SwiftUI

struct BackgroundMainView: View {
    
    var urlImage: String
    var height: Double
    
    var body: some View {
        
        GeometryReader { geometry in
            HStack (spacing: 0) {
                
                Rectangle()
                    .foregroundStyle(.black)
                
                ZStack(alignment: .leading) {
                    AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original/\(urlImage)")){ image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        Color.black
                    }
                    Rectangle()
                        .frame(width: 50)
                        .foregroundStyle(
                            LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .leading, endPoint: .trailing)
                        )
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height * (height))
        }
        .ignoresSafeArea()
        .background(.black)
    }
}

#Preview {
    BackgroundMainView(urlImage: "/uQ4lG7E7mlyKsGvbASftQ6Hu2IX.jpg", height: 1)
}

