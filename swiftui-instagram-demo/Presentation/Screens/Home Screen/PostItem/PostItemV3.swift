//
//  PostItemV3.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct PostItemV3: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                CircleAvatar(post.author.photoURL)
                AppText(post.author.username)
                    .bold()
            }
            CachedNetworkImage(post.photoURL)
            HStack {
                if post.didLike {
                    AppIcon("heart.fill")
                        .foregroundColor(.red)
                } else {
                    AppIcon("heart")
                }
                AppIcon("bubble.right")
                AppIcon("paperplane")
                Spacer()
                AppIcon(post.didBookmark ? "bookmark.fill" : "bookmark")
            }
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
                        AppIcon("heart.fill", size: 12)
                            .foregroundColor(.red)
                    } else {
                        AppIcon("heart", size: 12)
                    }
                }
            }
            AppText(post.dateCreated, font: .caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical)
    }
}

#Preview {
    PostItemV3(post: Post.sample)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
