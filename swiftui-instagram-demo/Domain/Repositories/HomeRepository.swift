//
//  HomeRepository.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation

protocol HomeRepository {
    func getPosts() async -> [Post]
    func generatePosts()
}
