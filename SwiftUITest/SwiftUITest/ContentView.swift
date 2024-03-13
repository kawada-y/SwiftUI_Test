//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("largeTitle")
                .font(.largeTitle)
            Text("title")
                .font(.title)
            Text("headline")
                .font(.headline)
            Text("subheadline")
                .font(.subheadline)
            Text("body")
                .font(.body)
            Text("callout")
                .font(.callout)
            Text("footnote")
                .font(.footnote)
            Text("caption")
                .font(.caption)
        }
    }
}

#Preview {
    ContentView()
        .previewLayout(.fixed(width: 200, height: 80))
}
