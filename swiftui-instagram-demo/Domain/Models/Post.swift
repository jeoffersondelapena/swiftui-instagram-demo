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
    var didBookmark: Bool
    var comments: [Comment]
    
    var photoURL: URL? {
        URL(string: photo)
    }
    
    static let sample = Post(
        id: "post-01",
        author: User.sample1,
        photo: "https://firebasestorage.googleapis.com/v0/b/swiftui-instagram-demo.appspot.com/o/posts%2Fpost01a.jpeg?alt=media&token=c2a9c713-5887-417f-ba63-56acd23a207e",
        caption: "Just scored an amazing goal in today's match! ⚽️🔥 Feeling unstoppable!",
        dateCreated: "April 15, 2024 at 9:00 PM",
        numLikes: "10,356,782",
        didLike: true,
        didBookmark: true,
        comments: Comment.samples
    )
}
