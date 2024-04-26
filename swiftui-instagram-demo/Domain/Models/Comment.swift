//
//  Comment.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import Foundation

struct Comment: Codable, Identifiable {
    var id: String
    var author: User
    var content: String
    var dateCreated: String
    var numLikes: String
    var didLike: Bool
    
    static let sample = Comment(
        id: "comment-01-a",
        author: User.sample2,
        content: "Incredible goal, Cristiano! You never cease to amaze us on the field. 🙌",
        dateCreated: "April 15, 2024 at 9:15 PM",
        numLikes: "1.2M",
        didLike: false
    )
    
    static let samples = [
        Comment.sample
    ]
}
