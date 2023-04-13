//
//  CheckListItem.swift
//  Recurist
//
//  Created by Maxim Gladkov on 12.04.2023.
//

import SwiftUI

struct CheckListItem: View {
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.primary)
                
            Spacer()
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 20)
        .background {
            backgroundColor
        }
        .cornerRadius(10)
        
    }
    
    //MARK: - Properties
    var title: String
    var backgroundColor: Color
    var action: (() -> Void)?
    
    //MARK: - Init
    init(
        model: CheckListItemModel,
        action: (() -> Void)? = nil
    ) {
        self.title = model.title
        self.backgroundColor = model.backgroundColor
        self.action = action
    }
    
}

struct CheckListItem_Previews: PreviewProvider {
    static var previews: some View {
        CheckListItem(
            model: .init(
                title: "Muay Thai",
                backgroundColor: .secondary
            )
        )
    }
}
