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
    
    //var listTitles: ListTitles?
    //var titles: [Title] = []
    var titles: Titles?
    var results: [Result] = []
    
    init(useCase: SearchUseCase = SearchUseCase()) {
        self.useCase = useCase
        self.getAllTitles()
    }
    
    func getAllTitles() {
        Task { @MainActor in
            do {
                titles = try await useCase.searchTitles()
                results = titles?.results ?? []
                print("Títulos: \(results)")
            } catch {
                results = []
                print("No lectura")
            }
            
        }
    }
}
