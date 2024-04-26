//
//  CachedNetworkImage.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI
import Kingfisher

struct CachedNetworkImage: View {
    let url: URL?
    
    init(_ url: URL?) {
        self.url = url
    }
    
    var body: some View {
        KFImage(url)
            .placeholder {
                ProgressView()
            }
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

#Preview {
    CachedNetworkImage(Post.sample.photoURL!)
}
