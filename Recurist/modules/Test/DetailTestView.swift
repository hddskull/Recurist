//
//  DetailTestView.swift
//  Recurist
//
//  Created by Maxim Gladkov on 28.03.2023.
//

import SwiftUI

struct DetailTestView: View {
    @EnvironmentObject var coordinator: NavigationCoordinator
    
    let title: String
    
    var body: some View {
        VStack {
            Button("Back") {
                coordinator.pop()
            }
            Spacer()
            
            Text(title)
            Spacer()
        }
    }
}

struct DetailTestView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTestView(title: "title")
    }
}
