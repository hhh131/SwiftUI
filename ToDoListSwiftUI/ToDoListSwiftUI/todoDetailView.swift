//
//  todoDetailView.swift
//  ToDoListSwiftUI
//
//  Created by 신희권 on 2023/06/14.
//

import SwiftUI

struct todoDetailView: View {
    var todo: Todo
    var body: some View {
        VStack(spacing: 30){
            Text("제목")
            Text(todo.title)
                .padding()
                .border(.yellow)
            Text("내용")
            Text(todo.description)
                .padding()
                .border(.yellow)

        }
    }
}

struct todoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        todoDetailView(todo: Todo(title: "sssa", description: "Asdas",isChecked: false))
    }
}
