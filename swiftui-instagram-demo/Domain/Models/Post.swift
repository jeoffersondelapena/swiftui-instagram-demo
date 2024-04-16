//
//  Post.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation

struct Post: Codable, Identifiable {
    var id: String
    var author: User
    var photo: String
    var caption: String
    var dateCreated: String
    var numLikes: String
    var didLike: Bool
    var comments: [Comment]
    
    static let sample = Post(
        id: "abc",
        author: User.sample,
        photo: "http://placekitten.com/200/300",
        caption: "Some caption...",
        dateCreated: "April 15, 2024 at 9:00 PM",
        numLikes: "3",
        didLike: false,
        comments: []
    )
}

struct SampleData: Codable {
    var posts: [Post]
}
