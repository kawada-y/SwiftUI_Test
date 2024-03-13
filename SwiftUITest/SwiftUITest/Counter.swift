//
//  Counter.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct Counter: View {
    @StateObject private var dataSource = DataSource()
    var body: some View {
        VStack {
            Button {
                dataSource.counter += 1
            } label: {
                Text("count: \(dataSource.counter)")
            }
        }
    }
}

#Preview {
    Counter()
}
