//
//  CircleAvatar.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct CircleAvatar: View {
    let url: URL
    
    var body: some View {
        CachedNetworkImage(url: url)
            .clipShape(Circle())
            .frame(width: 24, height: 24)
    }
}

#Preview {
    CircleAvatar(url: User.sample.photoURL!)
}
