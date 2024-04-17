//
//  CommentsSheet.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct CommentsSheet: View {
    let comments: [Comment]
    var body: some View {
        ScrollView {
            LazyVStack {
                Text("Comments")
                    .bold()
                    .padding(8)
                
                Divider()
                
                ForEach(comments) { comment in
                    CommentItem(comment: comment)
                }
                .listStyle(.plain)
                .scrollDisabled(true)
            }
        }
        .padding()
    }
}

#Preview {
    CommentsSheet(comments: Comment.samples)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
