//
//  WebView.swift
//  Hacker News
//
//  Created by Sam Harris on 18/03/2022.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let url: String?
    
    func makeUIView(context: Context) -> UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = url {
            if let urlInstance = URL(string: safeUrl) {
                let request = URLRequest(url: urlInstance)
                uiView.load(request)
            }
        }
    }
}
