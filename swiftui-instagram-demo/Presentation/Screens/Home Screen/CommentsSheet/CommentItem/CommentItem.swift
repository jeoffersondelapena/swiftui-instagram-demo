//
//  CommentItem.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/26/24.
//

import SwiftUI

struct CommentItem: View {
    let comment: Comment
    
    var body: some View {
        EmptyView()
    }
}

#Preview {
    CommentItem(comment: Comment.sample)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
