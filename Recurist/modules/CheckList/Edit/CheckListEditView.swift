//
//  CheckListEditView.swift
//  Recurist
//
//  Created by Maxim Gladkov on 13.04.2023.
//

import SwiftUI

struct CheckListEditView: View {
    //MARK: - Body
    var body: some View {
        VStack {
            HStack {
                TitleView(title: "Create a new check list")
                
                Spacer()
                
                //close button
                IconButton(
                    systemName: "x.circle",
                    color: .red
                ) {
                    //TODO: pop action
                }
                .padding(.trailing)
                
                //save button
                IconButton(
                    systemName: "checkmark.circle",
                    color: .green
                ) {
                    //TODO: save and pop action
                }
                
            }
            
            Text("List name")
            
            TextField(
                "name",
                text: $vm.listTitle
            )
            .frame(width: .infinity, height: 20)
            
            HStack {
                Text("List items")
                
                Spacer()
                
                Text("add to:")
                
                Button {
                    vm.appendToList.toggle()
                } label: {
                    Text(vm.appendToList ? "Bottom": "Top")
                        .foregroundColor(
                            .black.opacity(0.7)
                        )
                        .padding(5)
                        .background {
                            Color.black.opacity(0.1)
                        }
                        .cornerRadius(8)
                    
                }
                .padding(.trailing)


                
                IconButton(
                    systemName: "plus.circle",
                    color: .green
                ) {
                    vm.addToList("")
                }
            }
            
            ScrollView(
                .vertical,
                showsIndicators: false
            ) {
                ForEach(vm.itemList, id: \.self) { item in
                    CheckListMainItem(
                        model: .init(
                            title: item,
                            backgroundColor: .secondary
                        )
                    )
                }
                
            }
        }
        .padding()
    }
    
    //MARK: - Properties
    @ObservedObject var vm: CheckListEditViewModel
    

    //MARK: - Init
    init() {
        self.vm = CheckListEditViewModel()
        
    }

}

struct CheckListEditView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListEditView()
    }
}
