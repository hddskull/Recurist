//
//  CheckListView.swift
//  Recurist
//
//  Created by Maxim Gladkov on 12.04.2023.
//

import SwiftUI

struct CheckListViewMain: View {
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    TitleView(title: "Recurist")
                    
                    Spacer()
                    
                    Button {
                        //add action
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .foregroundColor(.secondary)
                            .frame(
                                width: addImageSize,
                                height: addImageSize
                            )
                    }

                }
                
                Spacer()
                
                ScrollView(
                    .vertical,
                    showsIndicators: false
                ) {
                    ForEach(vm.lists) { list in
                        CheckListMainItem(model: list) {
                            //action to detail list
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
    }
    
    //MARK: - Properties
    var addImageSize: CGFloat = 25
    @ObservedObject var vm: CheckListViewModel
    
    //MARK: - Init()
    init() {
        self.vm = CheckListViewModel()
    }
}

struct CheckListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListViewMain()
    }
}
