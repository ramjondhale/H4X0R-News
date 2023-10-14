//
//  DetailView.swift
//  H4X0R News
//
//  Created by Ram Jondhale on 14/10/23.
//

import SwiftUI

struct DetailView: View {

    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
