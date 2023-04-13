//
//  CheckListViewModel.swift
//  Recurist
//
//  Created by Maxim Gladkov on 12.04.2023.
//

import Foundation

final class CheckListViewModel: ObservableObject {
    //MARK: - Properties
    @Published var lists: [CheckListItemModel]
    
    //MARK: - Init()
    init() {
        self.lists = [.init(title: "Muay Thai", backgroundColor: .secondary),
                      .init(title: "Groceries", backgroundColor: .blue.opacity(0.8)),
                      .init(title: "My daily list", backgroundColor: .yellow.opacity(0.6))]
    }
    
    //MARK: - Funcs
    
}
