//
//  AllTitlesViewModel.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 26/05/25.
//

import Foundation

@Observable
class AllTitlesViewModel {
    
    private let useCase: SearchUseCase
    
    var titles: Titles?
    var results: [Result] = []
    var isLoading: Bool = false

    
    init(useCase: SearchUseCase = SearchUseCase()) {
        self.useCase = useCase
        self.getAllTitles()
    }
    
    func getAllTitles() {
        Task { @MainActor in
            isLoading = true
            do {
                titles = try await useCase.searchTitles(Endpoints.trendingTitles.rawValue)
                results = titles?.results ?? []
                print("Títulos: \(results)")
            } catch {
                results = []
                print("No lectura")
            }
            try? await Task.sleep(for: .seconds(2)) // Da tiempo de espera para apagar el Loader
            isLoading = false
        }
    }
    
    
}
