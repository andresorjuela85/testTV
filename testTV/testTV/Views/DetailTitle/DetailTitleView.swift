//
//  DetailTitleView.swift
//  testTV
//
//  Created by Andres Orjuela on 21/05/25.
//

import SwiftUI

struct DetailTitleView: View {
    
    @State var viewModel: DetailTitleViewModel
    
    var heightImage: Double
    
    init(id: Int, type: String, heightImage: Double) {
        self.viewModel = DetailTitleViewModel(type: type, id: id)
        self.heightImage = heightImage
    }
    
    var body: some View {
        
        ZStack {
            
            BackgroundMainView(urlImage: viewModel.movieDetail?.backdropPath ?? viewModel.serieDetail?.backdropPath ?? "", height: heightImage)
                .overlay {
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask {
                            LinearGradient(
                                stops: [.init(color: .white, location: 0.2), .init(color: .white.opacity(0.7), location: 0.5), .init(color: .white.opacity(0.3), location: 0.6)], startPoint: .leading, endPoint: .trailing)
                            
                        }
                }
                .ignoresSafeArea()
            
            if viewModel.type == "movie" {
                InfoMovieView(movie: viewModel.movieDetail)
                
            }
        }
        .onAppear {
            viewModel.getTitle()
        }
    }
}

#Preview {
    DetailTitleView(id: 209112, type: "movie", heightImage: 1)
}
