//
//  TodoListROw.swift
//  ToDoListSwiftUI
//
//  Created by 신희권 on 2023/06/14.
//

import SwiftUI

struct TodoListRow: View {
     var todo: Todo
    @State var isChecked: Bool = false
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 10){
                if !isChecked {
                    Text(todo.title)
                    
                    Text(todo.description.prefix(10))
                        .font(.system(size:10))
                        .foregroundColor(.gray)
                }
                else {
                    Text(todo.title)
                        .strikethrough()
                    
                    Text(todo.description.prefix(10))
                        .strikethrough()
                        .font(.system(size:10))
                        .foregroundColor(.gray)
                        
                }
            }
            Spacer()
            Button {
                //todo.isChecked.toggle()
            } label: {
                
                Image(systemName:
                        todo.isChecked ? "checkmark.square" : "square"
                )
                    .resizable()
                    .frame(width: 20,height: 20)
            }.buttonStyle(PlainButtonStyle())

            
        }.padding(10)
    }
}

struct TodoListROw_Previews: PreviewProvider {
    static var previews: some View {
        TodoListRow(todo: Todo(title: "세계멸망", description: "세계멸망하기",isChecked: false) )
    }
}
