//
//  CommentItemV2.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct CommentItemV2: View {
    let comment: Comment
    
    var body: some View {
        HStack {
            CircleAvatar(comment.author.photoURL)
            VStack {
                AppText(comment.author.username)
                    .bold()
                AppText(comment.content)
                AppText(comment.dateCreated, font: .caption)
                    .foregroundColor(.gray)
            }
            VStack {
                if comment.didLike {
                    AppIcon("heart.fill", size: 12)
                        .foregroundColor(.red)
                } else {
                    AppIcon("heart", size: 12)
                }
                Text(comment.numLikes)
                    .font(.caption)
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    CommentItemV2(comment: Comment.sample)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
