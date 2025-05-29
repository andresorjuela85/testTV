//
//  Titles.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 27/05/25.
//

import Foundation

import Foundation

// MARK: - Welcome
struct Titles: Codable, Hashable {
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Result: Codable, Hashable {
    let backdropPath: String
    let id: Int
    let name, originalName: String?
    let overview, posterPath: String
    let mediaType: MediaType
    let adult: Bool
    let originalLanguage: OriginalLanguage
    let genreIDS: [Int]
    let popularity: Double
    let firstAirDate: String?
    let voteAverage: Double
    let voteCount: Int
    let originCountry: [String]?
    let title, originalTitle, releaseDate: String?
    let video: Bool?

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id, name
        case originalName = "original_name"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case adult
        case originalLanguage = "original_language"
        case genreIDS = "genre_ids"
        case popularity
        case firstAirDate = "first_air_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case originCountry = "origin_country"
        case title
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case video
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case ja = "ja"
    case ko = "ko"
}
