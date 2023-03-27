//
//  RemoteConstant.swift
//  MovieDB
//
//  Created by Irwan on 09/03/23.
//

import Foundation

enum Constants {
    
    //The API's base URL
    static let BASE_URL = "https://api.themoviedb.org/3/"
    static let IMAGE_URL = "https://image.tmdb.org/t/p/w500"
    static let API_KEY = ""
    static let IMDB_URL = "https://www.imdb.com/title/"
    
    //The header fields
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
        case API_KEY = ""
    }
}
