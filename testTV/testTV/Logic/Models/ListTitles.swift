//
//  ListTitles.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 26/05/25.
//

import Foundation

// MARK: - Welcome
struct ListTitles: Codable, Hashable {
    let titles: [Title]
    let page, totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case titles, page
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Title
struct Title: Codable, Hashable {
    let id: Int
    let title: String
    let year: Int
    let imdbID: String
    let tmdbID: Int
    let tmdbType: TmdbType
    let type: TypeEnum

    enum CodingKeys: String, CodingKey {
        case id, title, year
        case imdbID = "imdb_id"
        case tmdbID = "tmdb_id"
        case tmdbType = "tmdb_type"
        case type
    }
}

enum TmdbType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum TypeEnum: String, Codable {
    case movie = "movie"
    case shortFilm = "short_film"
    case tvMiniseries = "tv_miniseries"
    case tvSeries = "tv_series"
    case tvSpecial = "tv_special"
}
