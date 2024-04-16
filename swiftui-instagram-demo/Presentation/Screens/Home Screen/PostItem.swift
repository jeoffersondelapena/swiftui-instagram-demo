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
        Text(post.caption)
            .font(.headline)
    }
}

#Preview {
    PostItem(post: Post.sample)
}
