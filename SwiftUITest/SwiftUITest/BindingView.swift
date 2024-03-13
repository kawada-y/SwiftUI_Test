//
//  BindingView.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct BindingView: View {
    @State var inputText: String = ""
    var body: some View {
        TextField("", text: $inputText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        Text(inputText)
    }
}

#Preview {
    BindingView()
}
