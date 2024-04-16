//
//  HomeRemoteService.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import Foundation
import FirebaseFirestore

class HomeRemoteService {
    private var db: Firestore = {
        return Firestore.firestore()
    }()
    
    func generatePosts() {
        guard let posts = getPostsFromJson() else {
            return
        }
        do {
            let postsCollection = db.collection("posts")
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
