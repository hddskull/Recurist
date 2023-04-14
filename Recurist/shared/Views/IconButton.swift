//
//  IconButton.swift
//  Recurist
//
//  Created by Maxim Gladkov on 14.04.2023.
//

import SwiftUI

struct IconButton: View {
    //MARK: - Body
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .resizable()
                .foregroundColor(color)
                .frame(
                    width: imageSize,
                    height: imageSize
                )
        }
    }
    
    //MARK: - Properties
    
    var systemName: String
    var action: () -> Void
    var color: Color
    var imageSize: CGFloat
    
    //MARK: - Init
    init(
        systemName: String,
        color: Color = .secondary,
        imageSize: CGFloat = 25,
        action: @escaping () -> Void
    ) {
        self.systemName = systemName
        self.color      = color
        self.imageSize  = imageSize
        self.action     = action
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(systemName: "plus.circle") { }
    }
}
