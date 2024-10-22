//
//  AppView.swift
//  WebView
//
//  Created by Gabriel Handford on 10/21/24.
//

import SwiftUI

struct AppView: View {
    @State var url: String = "http://localhost:8080"

    @ViewBuilder
    var webView: some View {
        if let url = URL(string: url) {
            WebView(url: url)
        } else {
            VStack {}
        }
    }

    var body: some View {
        webView
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    NavigationStack {
        AppView()
    }
}
