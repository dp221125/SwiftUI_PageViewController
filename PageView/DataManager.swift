//
//  DataManager.swift
//  PageView
//
//  Created by Seokho on 2020/02/24.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

class DataManager: ObservableObject {
    static let shared = DataManager()
    private var data = [ToDo]()
    @Published var finToDo = [ToDo]()
    @Published var willToDo = [ToDo]()
    
    func checkBoolean() {
        self.data.forEach { todo in
            if todo.isCheck == true {
                self.finToDo.append(todo)
            } else {
                self.willToDo.append(todo)
            }
        }
    }
    
    
    init() {
        self.data.append(ToDo(title: "HELLO", date: Date(), isCheck: true))
    }
}
