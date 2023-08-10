//
//  ContentView.swift
//  TodoClass
//
//  Created by shahab on 31/07/2023.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var todoManager = TodoManager()
    /*
    @State private var todos = [Todo(title: "Feed the eat", subtitle: "Feed at 12 PM every day"),
                            Todo(title: "Play with cat", isCompleted: true),
                            Todo(title: "Get allergies"),
                            Todo(title: "Run away from cat", isCompleted: true),
                            Todo(title: "Get a new cat")
    ]
     */
    // state varibale to she sheet to add new item
    @State private var showsheet = false
    
    var body: some View {
        NavigationStack {
            List($todoManager.todos, editActions: [.all]) { $todo in
                TodoRowView(todo: $todo)
                    
            }
            .navigationTitle("Todos")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showsheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showsheet){
                NewTodoView(sourcetodo: $todoManager.todos)
                    .presentationDetents([.medium])
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


