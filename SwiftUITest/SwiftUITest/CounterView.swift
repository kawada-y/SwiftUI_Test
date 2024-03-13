//
//  CounterView.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct SwitchColorView: View {
    @State private var isDanger: Bool = false
    var body: some View {
        VStack {
            Button {
                isDanger.toggle()
            } label: {
                Text("Change the Color")
            }
            if isDanger {
                Circle().foregroundColor(.red)
            } else {
                Circle().foregroundColor(.green)
            }
            CounterView()
        }
    }
}

struct CounterView: View {
    // @ObservedObjectをView内で生成
    @ObservedObject private var dataSource = DataSource()
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
    SwitchColorView()
}
