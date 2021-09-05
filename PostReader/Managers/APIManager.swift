//
//  APIManager.swift
//  PostReader
//
//  Created by Bilal A Rahman on 05/09/21.
//

import Foundation


class APIManager: NSObject {
    
    func fetchData(url: String) {
        guard let url = URL(string: url) else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
            }
        }.resume()
    }
    
}
