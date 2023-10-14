//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ram Jondhale on 14/10/23.
//

import SwiftUI

struct ContentView: View {

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

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjur"),
    Post(id: "3", title: "Hola")
]
