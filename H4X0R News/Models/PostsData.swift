//
//  PostsData.swift
//  H4X0R News
//
//  Created by Ram Jondhale on 14/10/23.
//

import Foundation

struct Results: Decodable {
    let hints: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String
    let points: Int
}
