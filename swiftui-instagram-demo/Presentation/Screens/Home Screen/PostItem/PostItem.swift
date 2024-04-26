//
//  PostItem.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/26/24.
//

import SwiftUI

struct PostItem: View {
    let post: Post
    
    var body: some View {
        EmptyView()
    }
}

#Preview {
    PostItem(post: Post.sample)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
