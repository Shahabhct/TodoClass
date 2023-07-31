//
//  Todo.swift
//  TodoClass
//
//  Created by shahab on 31/07/2023.
//

import Foundation
struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var subtitle = ""
    var isCompleted = false
}
