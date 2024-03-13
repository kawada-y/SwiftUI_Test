//
//  ParentView.swift
//  SwiftUITest
//
//  Created by 河田佳之 on 2024/03/13.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        EnvChildView()
    }
}

struct EnvChildView: View {
    var body: some View {
        EnvGrandChildView()
    }
}

struct EnvGrandChildView: View {
    @EnvironmentObject var dataSource: DataSource
    var body: some View {
        Text("\(dataSource.counter)")
    }
}

struct DataFlowSampleApp_Previews: PreviewProvider {
    @StateObject static private var dataSource = DataSource()
    static var previews: some View {
        ParentView().environmentObject(dataSource)
    }
}

#Preview {
    ParentView()
}
