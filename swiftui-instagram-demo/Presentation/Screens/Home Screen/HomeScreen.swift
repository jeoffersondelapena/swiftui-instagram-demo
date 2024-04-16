//
//  HomeScreen.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import SwiftUI

struct HomeScreen: View {
    static let shouldGeneratePosts = true
    
    @StateObject private var viewModel = HomeViewModel(
        repository: HomeRepositoryImpl(
            remoteService: HomeRemoteService()
        )
    )
    
    var body: some View {
        Text("Home")
            .navigationTitle("Swiftagram")
            .onAppear {
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
