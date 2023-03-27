//
//  MovieModel.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//

import Foundation

// MARK: - Movie
struct Movie: Codable {
    let adult: Bool?
    let backdrop_path: String?
    let belongsToCollection: BelongsToCollection?
    let budget: Int?
    let genres: [Genre]?
    let homepage: String?
    let id: Int?
    let imdb_id, original_language, original_title, overview: String?
    let popularity: Double?
    let poster_path: String?
    let productionCompanies: [ProductionCompany]?
    let productionCountries: [ProductionCountry]?
    let releaseDate: String?
    let revenue, runtime: Int?
    let spokenLanguages: [SpokenLanguage]?
    let status, tagline, title: String?
    let video: Bool?
    let vote_average: Double?
    let voteCount: Int?
}

// MARK: - BelongsToCollection
struct BelongsToCollection: Codable {
    let id: Int?
    let name, poster_path, backdrop_path: String?
}

// MARK: - Genre
struct Genre: Codable {
    let id: Int?
    let name: String?
}

// MARK: - ProductionCompany
struct ProductionCompany: Codable {
    let id: Int?
    let logo_path, name, origin_country: String?
}

// MARK: - ProductionCountry
struct ProductionCountry: Codable {
    let iso3166_1, name: String?
}

// MARK: - SpokenLanguage
struct SpokenLanguage: Codable {
    let englishName, iso639_1, name: String?
}
