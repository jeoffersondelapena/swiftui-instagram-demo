//
//  ContentView.swift
//  swiftui-instagram-demo
//
//  Created by Jeofferson Dela Peña on 4/16/24.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Task {
                await generateData()
            }
        }
    }
    
    private func generateData() async {
        let db = Firestore.firestore()
        do {
          try await db.collection("posts").document("post-0").setData([
            "name": "Los Angeles",
            "state": "CA",
            "country": "USA"
          ])
          print("Document successfully written!")
        } catch {
          print("Error writing document: \(error)")
        }
    }
}

#Preview {
    ContentView()
}
