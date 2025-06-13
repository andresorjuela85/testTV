//
//  MoviesViewModel.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 6/06/25.
//

import Foundation

@Observable
class MoviesViewModel {
    
    private let useCase: SearchUseCase
    
    var titles: Titles?
    var results: [Result] = []
    
    init(useCase: SearchUseCase = SearchUseCase()) {
        self.useCase = useCase
        self.getMoviesTitles()
    }
    
    func getMoviesTitles() {
        Task { @MainActor in
            do {
                titles = try await useCase.searchTitles(Endpoints.trendingMovies.rawValue)
                results = titles?.results ?? []
                print("Títulos: \(results)")
            } catch {
                results = []
                print("No lectura")
            }
            
        }
    }
    
    
}
