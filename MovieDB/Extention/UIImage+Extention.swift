//
//  UIImage+Extention.swift
//  MovieDB
//
//  Created by Ewide Dev. 2 on 09/03/23.
//

import Foundation
import UIKit

extension UIImageView {
    public func imageFromURL(_ urlString: String) {

        URLSession.shared.dataTask(with: NSURL(string: Constants.IMAGE_URL + urlString)! as URL, completionHandler: { (data, response, error) -> Void in

            if error != nil {
                print(error ?? "No Error")
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })

        }).resume()
    }
}
