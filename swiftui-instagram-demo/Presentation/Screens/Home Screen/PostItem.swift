//
//  PostItem.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct PostItem: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                if let photoURL = post.author.photoURL {
                    CircleAvatar(url: photoURL)
                }
                
                AppText(post.author.username)
                    .bold()
            }
            .padding(.horizontal, 8)
            
            if let photoURL = post.photoURL {
                CachedNetworkImage(url: photoURL)
            }
            
            VStack {
                HStack(spacing: 16) {
                    if post.didLike {
                        AppIcon(systemName: "heart.fill")
                            .foregroundColor(.red)
                    } else {
                        AppIcon(systemName: "heart")
                    }
                    
                    AppIcon(systemName: "bubble.right")
                
                
                    AppIcon(systemName: "paperplane")
                    
                    Spacer()
                
                    AppIcon(systemName: post.didBookmark ? "bookmark.fill" : "bookmark")
                }
                .padding(.vertical, 4)
                
                AppText("\(post.numLikes) likes")
                
                AppText("**\(post.author.username)** \(post.caption)")
                
                if !post.comments.isEmpty {
                    AppText("View all comments")
                        .foregroundColor(.gray)
                }
                
                if let highlightedComment = post.comments.first {
                    HStack {
                        AppText("**\(highlightedComment.author.username)** \(highlightedComment.content)")
                        
                        if highlightedComment.didLike {
                            AppIcon(systemName: "heart.fill", size: 12)
                                .foregroundColor(.red)
                        } else {
                            AppIcon(systemName: "heart", size: 12)
                        }
                    }
                }
                
                AppText(post.dateCreated, font: .caption)
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical)
    }
}

#Preview {
    PostItem(post: Post.sample)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
