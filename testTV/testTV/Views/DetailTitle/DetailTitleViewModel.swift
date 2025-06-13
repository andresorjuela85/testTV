//
//  DetailTitleViewModel.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 9/06/25.
//

import Foundation

@Observable
class DetailTitleViewModel {
    private let useCase: SearchUseCase
    
    var movieDetail: MovieDetail?
    var serieDetail: TvSerieDetail?
    var id: Int
    var type: String

    init(useCase: SearchUseCase = SearchUseCase(), type: String, id: Int) {
        self.useCase = useCase
        self.id = id
        self.type = type
    }
    
    func getTitle() {
        Task { @MainActor in
            do {
                let idString = String(id)
                if type == "movie" {
                    movieDetail = try await useCase.searchMovieDetail(Endpoints.searchMovieDetails.rawValue, id: idString)
                }
                if type == "tv" {
                    serieDetail = try await useCase.searchTvSerieDetail(Endpoints.searchTvSerieDetails.rawValue, id: idString)
                }

            } catch {
                print("No lectura")
            }
            
        }
    }
}
