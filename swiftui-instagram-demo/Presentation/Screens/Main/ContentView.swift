//
//  ContentView.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeScreen()
            }
            .tabItem {
                Label(
                    "Home",
                    systemImage: "house"
                )
            }
            
            NavigationStack {
                Text("Search")
            }
            .tabItem {
                Label(
                    "Search",
                    systemImage: "magnifyingglass"
                )
            }
            
            NavigationStack {
                Text("Create")
            }
            .tabItem {
                Label(
                    "Create",
                    systemImage: "plus.app"
                )
            }
            
            NavigationStack {
                Text("Reels")
            }
            .tabItem {
                Label(
                    "Reels",
                    systemImage: "play.square.stack"
                )
            }
            
            NavigationStack {
                Text("Profile")
            }
            .tabItem {
                Label(
                    "Profile",
                    systemImage: "person.crop.circle"
                )
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
