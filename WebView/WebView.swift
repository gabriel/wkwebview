//
//  WebView.swift
//  WebView
//
//  Created by Gabriel Handford on 10/21/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> WKWebView {
        // let configuration = WKWebViewConfiguration()
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        // Implement WKNavigationDelegate methods if needed
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            // Code when navigation starts
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Code when navigation finishes
        }
    }
}
