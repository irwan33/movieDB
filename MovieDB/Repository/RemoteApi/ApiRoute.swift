//
//  ApiRoute.swift
//  MovieDB
//
//  Created by Irwan on 09/03/23.
//

import Foundation
import RxSwift
import RxCocoa

class Requests: ApiClient {

    static func MovieList(page: Int) -> Observable<Movies> {
      let parameter = ["api_key": Constants.API_KEY,
                       "page": page,
                       "with_genres": "53"] as [String : Any]
      return request(Constants.BASE_URL + "discover/movie?", method: .get, parameters: parameter)
  }
    
    static func MovieDetail(_ id: Int) -> Observable<Movie> {
        let parameter = ["api_key": Constants.API_KEY,
                         "language": "en-US"] as [String : Any]
        return request(Constants.BASE_URL + "movie/\(id)", method: .get, parameters: parameter)
    }
}
