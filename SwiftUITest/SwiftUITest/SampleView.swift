//
//  SampleView.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct SampleView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        List {
            if colorScheme == .dark {
                // ダークモードの場合
                Text("dark mode")
            } else if colorScheme == .light {
                // ライトモードの場合
                Text("light mode")
            } else {
                Text("")
            }
        }
    }
}

#Preview {
    SampleView()
}
