//
//  Encodable+Extension.swift
//  MovieDB
//
//  Created by Irwan on 09/03/23.
//

import Foundation

extension Encodable {
    var prettyPrintedJSONString: String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        guard let data = try? encoder.encode(self) else { return nil }
        return String(data: data, encoding: .utf8) ?? nil
    }
}
