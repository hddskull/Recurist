//
//  CheckListItemModel.swift
//  Recurist
//
//  Created by Maxim Gladkov on 12.04.2023.
//

import SwiftUI

final class CheckListItemModel: ObservableObject, Identifiable {
    @Published var id: UUID
    @Published var title: String
    @Published var backgroundColor: Color
    
    init(
        id: UUID = UUID(),
        title: String,
        backgroundColor: Color
    ) {
        self.id = id
        self.title = title
        self.backgroundColor = backgroundColor
    }
}

