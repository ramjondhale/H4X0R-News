//
//  WebView.swift
//  H4X0R News
//
//  Created by Ram Jondhale on 14/10/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let urlString: String?

    typealias UIViewType = WKWebView

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString,
           let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
