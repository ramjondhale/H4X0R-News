//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Ram Jondhale on 14/10/23.
//

import Foundation

class NetworkManager {

    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    if let data {
                        let decoder = JSONDecoder()
                        do {
                            let result = try decoder.decode(Results.self, from: data)
                            print(result)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
