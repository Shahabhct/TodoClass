//
//  ContentView.swift
//  TodoClass
//
//  Created by shahab on 31/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [Todo(title: "Feed the cat"),
                            Todo(title: "Play with cat"),
                            Todo(title: "Get allergies"),
                            Todo(title: "Run away from cat", isCompleted: true),
                            Todo(title: "Get a new cat")
    ]
    var body: some View {
        List(todos) { todo in
                    Text(todo.title)
                }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
