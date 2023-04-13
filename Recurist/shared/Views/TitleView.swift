//
//  TitleView.swift
//  Recurist
//
//  Created by Maxim Gladkov on 13.04.2023.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        Text(title)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .foregroundColor(.primary)
            .font(
                .system(
                    size: 20,
                    weight: .bold,
                    design: .rounded)
            )
            .frame(height: 58)
    }
    
    var title: String
    
    init(title: String) {
        self.title = title
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Recurist")
    }
}
