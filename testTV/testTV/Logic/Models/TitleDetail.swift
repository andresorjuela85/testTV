//
//  TitleDetail.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 22/05/25.
//

import Foundation

struct TitleDetail: Codable {
    let id: Int
    let title, originalTitle, plotOverview, type: String
    let runtimeMinutes: Int?
    let year, endYear: Int
    let releaseDate, imdbID: String
    let tmdbID: Int
    let tmdbType: String
    let genres: [Int]
    let genreNames: [String]
    let userRating: Double
    let criticScore: Int
    let usRating: String
    let poster, posterMedium, posterLarge, backdrop: String
    let originalLanguage: String
    let similarTitles, networks: [Int]
    let networkNames: [String]
    let relevancePercentile, popularityPercentile: Double
    let trailer: String
    let trailerThumbnail: String
    let sources: [Source]

    enum CodingKeys: String, CodingKey {
        case id, title
        case originalTitle = "original_title"
        case plotOverview = "plot_overview"
        case type
        case runtimeMinutes = "runtime_minutes"
        case year
        case endYear = "end_year"
        case releaseDate = "release_date"
        case imdbID = "imdb_id"
        case tmdbID = "tmdb_id"
        case tmdbType = "tmdb_type"
        case genres
        case genreNames = "genre_names"
        case userRating = "user_rating"
        case criticScore = "critic_score"
        case usRating = "us_rating"
        case poster, posterMedium, posterLarge, backdrop
        case originalLanguage = "original_language"
        case similarTitles = "similar_titles"
        case networks
        case networkNames = "network_names"
        case relevancePercentile = "relevance_percentile"
        case popularityPercentile = "popularity_percentile"
        case trailer
        case trailerThumbnail = "trailer_thumbnail"
        case sources
    }
}

// MARK: - Source
struct Source: Codable {
    let sourceID: Int
    let name: String
    let type: TypeEnumDetail
    let region: String
    let iosURL, androidURL: AndroidURLEnum
    let webURL: String
    let format: Format?
    let price: Double?
    let seasons, episodes: Int

    enum CodingKeys: String, CodingKey {
        case sourceID = "source_id"
        case name, type, region
        case iosURL = "ios_url"
        case androidURL = "android_url"
        case webURL = "web_url"
        case format, price, seasons, episodes
    }
}

enum AndroidURLEnum: String, Codable {
    case deeplinksAvailableForPaidPlansOnly = "Deeplinks available for paid plans only."
}

enum Format: String, Codable {
    case hd = "HD"
    case sd = "SD"
}

enum TypeEnumDetail: String, Codable {
    case buy = "buy"
    case sub = "sub"
    case tve = "tve"
}
