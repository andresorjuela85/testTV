//
//  ServiceConstants.swift
//  testTV
//
//  Created by Andres Camilo Orjuela Hurtado on 22/05/25.
//

import Foundation

enum ServiceError: Error {
    case `default`
    case badURL
}

enum Endpoints: String {
    case trendingTitles = "https://api.themoviedb.org/3/trending/all/day"
    case trendingMovies = "https://api.themoviedb.org/3/trending/movie/day"
    case trendingTVShows = "https://api.themoviedb.org/3/trending/tv/day"
    case trendingPeople = "https://api.themoviedb.org/3/trending/person/day"
    case upcomingMovies = "https://api.themoviedb.org/3/movie/upcoming"
    case searchMovieDetails = "https://api.themoviedb.org/3/movie/%@"
    case searchTvSerieDetails = "https://api.themoviedb.org/3/tv/%@"
}
