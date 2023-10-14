//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ram Jondhale on 14/10/23.
//

import SwiftUI

struct ContentView: View {

    let posts: [Post]
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("H4X0R News")
        }
    }
}

#Preview {
    ContentView()
}
