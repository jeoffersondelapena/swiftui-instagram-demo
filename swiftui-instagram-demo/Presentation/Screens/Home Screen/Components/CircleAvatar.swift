//
//  CircleAvatar.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct CircleAvatar: View {
    let url: URL?
    
    init(_ url: URL?) {
        self.url = url
    }
    
    var body: some View {
        CachedNetworkImage(url)
            .clipShape(Circle())
            .frame(width: 24, height: 24)
    }
}

#Preview {
    CircleAvatar(User.sample1.photoURL!)
}
