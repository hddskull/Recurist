//
//  CheckListEditViewModel.swift
//  Recurist
//
//  Created by Maxim Gladkov on 14.04.2023.
//

import Foundation

final class CheckListEditViewModel: ObservableObject {
    //MARK: - Properties
    @Published var listTitle: String
    @Published var itemList: [String]
    @Published var appendToList: Bool
    
    //MARK: - Init()
    init() {
        self.listTitle = ""
        self.itemList = [
            "Shorts",
            "T-shirt"
        ]
        self.appendToList = true
    }
    
    //MARK: - Functions
    
    func addToList(_ el: String) {
        if appendToList {
            itemList.append(el)
        } else {
            itemList.insert(el, at: 0)
        }
    }
}
