//
//  ContentView.swift
//  ToDoListSwiftUI
//
//  Created by 신희권 on 2023/06/14.
//

import SwiftUI

struct ContentView: View {

    //@EnvironmentObject var todo: [Todo]
    var todo: [Todo] = Todo.todoList
    
    var body: some View {
        NavigationStack{
            Text("")
                .navigationTitle("오늘 할 일")

                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Help") {
                        
                        }
                    }
                }
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink{
//                            TodoListAddDetail( todo: todo)
                        } label: {
                            
                            Image(systemName: "plus")
                        }
                    }
                }
            
            NavigationView {
                List{
                    ForEach(todo) { todo in
                        NavigationLink{
                            todoDetailView(todo: todo)
                        } label: {
                            TodoListRow(todo: todo)
                        }
                    }
                }
                .listStyle(.plain)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
