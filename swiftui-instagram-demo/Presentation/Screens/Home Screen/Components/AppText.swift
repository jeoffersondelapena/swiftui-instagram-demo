//
//  AppText.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/17/24.
//

import SwiftUI

struct AppText: View {
    private let content: String
    private let font: Font
    
    init(_ content: String, font: Font = .subheadline) {
        self.content = content
        self.font = font
    }
    
    var body: some View {
        Text(try! AttributedString(markdown: content))
            .font(font)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    AppText("Hello, SwiftPH!")
}
