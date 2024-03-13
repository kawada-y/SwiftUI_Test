//
//  ToggleView.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Toggle("switch isOn", isOn: $isOn)
            Text("\(isOn ? "On" : "Off")")
            
        }
    }
}

#Preview {
    ToggleView()
}
