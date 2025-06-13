//
//  SearchUseCase.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 26/05/25.
//

import Foundation

class SearchUseCase {
    private let service: Service
    
    init(service: Service = Service()) {
        self.service = service
    }
    
    func searchTitles(_ urlLink: String) async throws -> Titles {
        let url = URL(string: urlLink)
        guard let url = url else {
            fatalError("Invalid URL")
        }
        
        let component = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let queryItems: [URLQueryItem] = [
          URLQueryItem(name: "language", value: "en-US"),
        ]
        guard var components = component else {
            fatalError("Invalid URLComponents")
        }
        components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems

        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = [
            "accept": "application/json",
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MjY4NzgwYTM1ZWRkMWM3NmMxMjdiYmUzMTgzNWFiZCIsIm5iZiI6MTc0ODM2ODA0MS42NzUsInN1YiI6IjY4MzVmYWE5YjVmZDk0MWE1YzJiN2JjYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QzsTTWYoTlw4WAdPLpOkpRH17vCUqtouEJCS8l-DpvM"
        ]
        let result: Titles = try await service.fetchData(from: request)
        return result
    }
    
    func searchMovieDetail(_ urlLink: String, id: String) async throws -> MovieDetail {
        let url = URL(string: String(format: urlLink, id))

        guard let url = url else {
            fatalError("Invalid URL")
        }
        
        let component = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let queryItems: [URLQueryItem] = [
          URLQueryItem(name: "language", value: "en-US"),
        ]
        guard var components = component else {
            fatalError("Invalid URLComponents")
        }
        components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems

        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = [
            "accept": "application/json",
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MjY4NzgwYTM1ZWRkMWM3NmMxMjdiYmUzMTgzNWFiZCIsIm5iZiI6MTc0ODM2ODA0MS42NzUsInN1YiI6IjY4MzVmYWE5YjVmZDk0MWE1YzJiN2JjYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QzsTTWYoTlw4WAdPLpOkpRH17vCUqtouEJCS8l-DpvM"
        ]
        let result: MovieDetail = try await service.fetchData(from: request)
        return result
    }
    
    func searchTvSerieDetail(_ urlLink: String, id: String) async throws -> TvSerieDetail {
        let url = URL(string: String(format: urlLink, id))

        guard let url = url else {
            fatalError("Invalid URL")
        }
        
        let component = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let queryItems: [URLQueryItem] = [
          URLQueryItem(name: "language", value: "en-US"),
        ]
        guard var components = component else {
            fatalError("Invalid URLComponents")
        }
        components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems

        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = [
            "accept": "application/json",
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MjY4NzgwYTM1ZWRkMWM3NmMxMjdiYmUzMTgzNWFiZCIsIm5iZiI6MTc0ODM2ODA0MS42NzUsInN1YiI6IjY4MzVmYWE5YjVmZDk0MWE1YzJiN2JjYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QzsTTWYoTlw4WAdPLpOkpRH17vCUqtouEJCS8l-DpvM"
        ]
        let result: TvSerieDetail = try await service.fetchData(from: request)
        return result
    }
}
