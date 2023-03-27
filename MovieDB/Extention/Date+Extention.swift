//
//  Date+Extention.swift
//  MovieDB
//
//  Created by Irwan on 09/03/23.
//

import Foundation

extension String {
    func roundTripDate(style: DateFormatter.Style) -> String? {
        //set things up
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.timeZone = .current

        formatter.dateFormat = "yyyy-MM-dd" // this is the date format coming in
        //this guards against a String not being in the correct format
        guard let date = formatter.date(from: self) else {
            return nil
        }

        formatter.dateStyle = style // this is the date format going out
        return formatter.string(from: date)
    }
}

extension Double {
    func toString() -> String {
        return String(format: "%.1f",self)
    }
}
