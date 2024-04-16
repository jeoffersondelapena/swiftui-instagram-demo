//
//  HomeRemoteService.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation
import FirebaseFirestore

class HomeRemoteService {
    lazy var db = Firestore.firestore()
    
    lazy var postsCollection = db.collection("posts")
    
    func getPosts() async -> [Post] {
        do {
            var posts: [Post] = []
            for document in (try await postsCollection.getDocuments()).documents {
                posts.append(try document.data(as: Post.self))
            }
            return posts
        } catch {
            print("Error getting documents: \(error)")
            return []
        }
    }
    
    func generatePosts() {
        guard let posts = getPostsFromJson() else {
            return
        }
        do {
            try posts.forEach { post in
                try postsCollection.document(post.id).setData(from: post)
            }
        } catch {
            print("Error writing document: \(error)")
        }
    }
    
    private func getPostsFromJson() -> [Post]? {
        guard let url = Bundle.main.url(forResource: "sample_data", withExtension: "json") else {
            return nil
        }
        do {
            return (try JSONDecoder().decode(SampleData.self, from: try Data(contentsOf: url))).posts
        } catch {
            print("Error getting posts from json: \(error)")
            return nil
        }
    }
}
