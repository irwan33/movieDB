//
//  MoviesModel.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//

import Foundation

// MARK: - Movies
struct Movies: Codable {
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int?
}

// MARK: - Result
struct Result: Codable {
    let adult: Bool?
    let backdrop_path: String?
    let genre_ids: [Int]?
    let id: Int?
    let originalLanguage, original_title, overview: String?
    let popularity: Double?
    let poster_path, release_date, title: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Int?
}
