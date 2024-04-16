//
//  Post.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation

struct Post: Codable {
    var id: String
    var author: User
    var photo: String
    var caption: String
    var dateCreated: String
    var numLikes: String
    var didLike: Bool
    var comments: [Comment]
}

struct SampleData: Codable {
    var posts: [Post]
}
