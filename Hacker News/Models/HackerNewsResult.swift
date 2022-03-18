//
//  HackerNewsResult.swift
//  Hacker News
//
//  Created by Sam Harris on 18/03/2022.
//

import Foundation

struct HackerNewsResult: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return self.objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
