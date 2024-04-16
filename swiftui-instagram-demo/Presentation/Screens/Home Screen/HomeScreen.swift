//
//  HomeScreen.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import SwiftUI

struct HomeScreen: View {
    static let shouldGeneratePosts = false
    
    @StateObject private var viewModel = HomeViewModel(
        repository: HomeRepositoryImpl(
            remoteService: HomeRemoteService()
        )
    )
    
    var body: some View {
        List(viewModel.posts) { post in
            Text(post.caption)
        }
        .navigationTitle("Swiftagram")
        .onAppear {
            Task {
                await viewModel.getPosts()
            }
            guard HomeScreen.shouldGeneratePosts else {
                return
            }
            viewModel.generatePosts()
        }
    }
}

#Preview {
    HomeScreen()
}
