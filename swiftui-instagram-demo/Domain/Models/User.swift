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
    
    var photoURL: URL? {
        URL(string: photo)
    }
    
    static let sample = User(
        id: "cristiano-ronaldo",
        username: "cristianoronaldo",
        photo: "https://firebasestorage.googleapis.com/v0/b/swiftui-instagram-demo.appspot.com/o/users%2Fcristiano_ronaldo.jpeg?alt=media&token=d2d74336-026e-4772-9759-db77c1928f27"
    )
}
