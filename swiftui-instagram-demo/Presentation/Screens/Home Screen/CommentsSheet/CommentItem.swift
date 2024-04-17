//
//  CommentItem.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct CommentItem: View {
    let comment: Comment
    var body: some View {
        HStack {
            if let photoURL = comment.author.photoURL {
                CircleAvatar(url: photoURL)
            }
            
            VStack {
                AppText(comment.author.username)
                    .bold()
                
                AppText(comment.content)
                
                AppText(comment.dateCreated, font: .caption)
                    .foregroundColor(.gray)
            }
            
            VStack {
                if comment.didLike {
                    AppIcon(systemName: "heart.fill", size: 12)
                        .foregroundColor(.red)
                } else {
                    AppIcon(systemName: "heart", size: 12)
                }
                
                Text(comment.numLikes)
                    .font(.caption)
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    CommentItem(comment: Comment.sample)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
