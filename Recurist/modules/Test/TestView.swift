//
//  TestView.swift
//  Recurist
//
//  Created by Maxim Gladkov on 28.03.2023.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject var coordinator: NavigationCoordinator
    
    
    var body: some View {
        Button("Go to detail view") {
            coordinator.show(DetailTestView(title: "Detail view"))
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
