//
//  Post.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation

struct Post: Codable {
    var id: String
    var contentText: String
}

struct PostsWrapper: Codable {
    var posts: [Post]
}
