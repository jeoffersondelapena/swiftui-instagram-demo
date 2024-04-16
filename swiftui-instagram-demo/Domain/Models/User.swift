//
//  User.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import Foundation

struct User: Codable {
    var id: String
    var username: String
    var photo: String
    
    static let sample = User(
        id: "abc",
        username: "juandelacruz",
        photo: "http://placekitten.com/200/300"
    )
}
