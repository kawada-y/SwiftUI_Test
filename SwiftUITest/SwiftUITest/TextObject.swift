//
//  TextObject.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct TextObject: View {
    @StateObject private var dataSource = DataSource()
    var body: some View {
        ObjectChildView(dataSource: dataSource)
    }
}

struct ObjectChildView: View {
    @ObservedObject var dataSource: DataSource
    var body: some View {
        VStack {
            Button {
                dataSource.counter += 1
            } label: {
                Text("increment counter")
            }
            Text("count: \(dataSource.counter)")
        }
    }
}

#Preview {
    TextObject()
}
