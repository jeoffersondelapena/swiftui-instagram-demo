//
//  Comment.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import Foundation

struct Comment: Codable {
    var id: String
    var author: User
    var content: String
    var dateCreated: String
    var numLikes: String
    var didLike: Bool
}
