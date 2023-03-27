//
//  ErrorAPI.swift
//  MovieDB
//
//  Created by Irwan on 09/03/23.
//

import Foundation
import Foundation
enum ApiError: Error {
    case forbidden              //Status code 403
    case notFound               //Status code 404
    case conflict               //Status code 409
    case internalServerError    //Status code 500
    case badRequest             //Status code 400
}
