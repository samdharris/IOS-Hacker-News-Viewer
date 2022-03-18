//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Sam Harris on 18/03/2022.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetch() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {

            let urlSession = URLSession(configuration: .default)
            let task = urlSession.dataTask(with: url) {
                (data, urlResponse, error) in
                
                if error == nil {
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(HackerNewsResult.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
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
