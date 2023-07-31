//
//  ContentView.swift
//  TodoClass
//
//  Created by shahab on 31/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [Todo(title: "Feed the cat"),
                            Todo(title: "Play with cat", isCompleted: true),
                            Todo(title: "Get allergies"),
                            Todo(title: "Run away from cat", isCompleted: true),
                            Todo(title: "Get a new cat")
    ]
    var body: some View {
        NavigationStack {
            List($todos) { $todo in
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            todo.isCompleted.toggle()
                        }
                    Text(todo.title)
                        .strikethrough(todo.isCompleted)
                    
                   
                }
                    
            }
            .navigationTitle("Todos")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
