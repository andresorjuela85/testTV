//
//  Service.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 22/05/25.
//

import Foundation

class Service {
    
    func fetchData<T:Codable>(from url: URLRequest) async throws -> T {

        do {
            let (data, _) = try await URLSession.shared.data(for: url)
            let result = try JSONDecoder().decode(T.self, from: data)
            return result
        } catch {
            print("Error: \(error)")
            throw ServiceError.default
            
        }
    }
}
