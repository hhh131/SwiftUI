//
//  TodoListAddDetail.swift
//  ToDoListSwiftUI
//
//  Created by 신희권 on 2023/06/14.
//

import SwiftUI

struct TodoListAddDetail: View {
    @State var titleString: String = ""
    @State var descripString: String = ""
    var todo: Todo
    var body: some View {
      
        NavigationStack{
            Text("제목")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            UserDefaults.standard.set(todo, forKey: "Todo")
                        } label: {
                            Text("save")
                            
                        }

                    }
                }
            TextField("제목을 입력 해 주세요",text:$titleString)
            
            Divider()
            
            Text("내용")
            ZStack{
           
                TextEditor(text: $descripString)
                
            }
            Spacer()
        }.padding(20)
    
    }
}

struct TodoListAddDetail_Previews: PreviewProvider {
    static var previews: some View {
        TodoListAddDetail(todo: Todo(title: "asdasdas", description: "Asdasd", isChecked: false))
    }
}
