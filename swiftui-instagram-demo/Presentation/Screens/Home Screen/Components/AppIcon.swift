//
//  AppIcon.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct AppIcon: View {
    private let systemName: String
    private let size: CGFloat
    
    init(systemName: String, size: CGFloat = 20) {
        self.systemName = systemName
        self.size = size
    }
    
    var body: some View {
        Image(systemName: systemName)
            .resizable()
            .frame(width: size, height: size)
    }
}

#Preview {
    AppIcon(systemName: "house")
}
