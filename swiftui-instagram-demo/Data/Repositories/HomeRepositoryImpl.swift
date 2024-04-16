//
//  HomeRepositoryImpl.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation

class HomeRepositoryImpl: HomeRepository {
    private let remoteService: HomeRemoteService
    
    init(remoteService: HomeRemoteService) {
        self.remoteService = remoteService
    }
    
    func getPosts() async -> [Post] {
        await remoteService.getPosts()
    }
    
    func generatePosts() {
        remoteService.generatePosts()
    }
}
