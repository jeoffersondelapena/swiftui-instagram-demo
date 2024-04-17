//
//  HomeViewModel.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    private let repository: HomeRepository
    
    init(repository: HomeRepository) {
        self.repository = repository
        if Constants.shouldGeneratePosts {
            generatePosts()
        }
    }
    
    func getPosts() async {
        let posts = await repository.getPosts()
        await MainActor.run {
            self.posts = posts
        }
    }
    
    func generatePosts() {
        repository.generatePosts()
    }
}
