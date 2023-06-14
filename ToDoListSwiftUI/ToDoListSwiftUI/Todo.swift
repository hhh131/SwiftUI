//
//  Todo.swift
//  ToDoListSwiftUI
//
//  Created by 신희권 on 2023/06/14.
//

import Foundation

struct Todo: Identifiable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var isChecked: Bool
    
}
extension Todo{
    static let todoList = [
        Todo(title: "개굴", description: "개굴개꿀",isChecked: false),
        Todo(title: "SwiftUI 배우기", description: "개굴개꿀",isChecked: false),
        Todo(title: "UiKit 버리기", description: "버리기버리기버리기",isChecked: false),
        Todo(title: "세계정복하기", description: "세계정복하기세계정복하기",isChecked: false)
    ]
}
