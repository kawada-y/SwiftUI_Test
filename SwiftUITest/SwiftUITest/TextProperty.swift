//
//  TextProperty.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct TextProperty: View {
//    var body: some View {
//        HStack {
//            ChildView(color: .blue)
//            ChildView(color: .yellow)
//            ChildView(color: .red)
//        }
//    }
    
    @State private var counter = 0
    var body: some View {
//        Button {
//            counter += 1
//        } label: {
//            Text("counter is \(counter)")
//        }
        
        HStack {
            ChildView(counter: $counter)
                .frame(width: .infinity)
        }
        Text("\(counter)")
    }
}

struct ChildView: View {
//    let color: Color
//    var body: some View {
//        Circle().foregroundColor(color)
//    }
    
    @Binding var counter: Int
    var body: some View {
        Button {
            counter += 1
        } label: {
            Text("\(counter)")
                .font(.title)
        }
    }
}

#Preview {
    TextProperty()
}
