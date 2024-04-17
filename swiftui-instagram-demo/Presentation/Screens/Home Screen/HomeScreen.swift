//
//  HomeScreen.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel(
        repository: HomeRepositoryImpl(
            remoteService: HomeRemoteService()
        )
    )
    
    var body: some View {
        List(viewModel.posts) { post in
            PostItem(post: post)
        }
        .listStyle(.plain)
        .navigationTitle("Swiftagram")
        .onAppear {
            Task {
                await viewModel.getPosts()
            }
        }
    }
}

#Preview {
    TabView {
        NavigationStack {
            HomeScreen()
        }
        .tabItem {
            Label(
                "Home",
                systemImage: "house.fill"
            )
        }
    }
    .preferredColorScheme(.dark)
}
