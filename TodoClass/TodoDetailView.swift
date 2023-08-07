//
//  TodoDetailView.swift
//  TodoClass
//
//  Created by shahab on 31/07/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo : Todo

    var body: some View {
        Form {
            TextField("Title", text: $todo.title)
            TextField("Subtitle", text: $todo.subtitle)
                .foregroundColor(.gray)
            Toggle("Completed?", isOn: $todo.isCompleted)
            //Stepper(<#T##title: StringProtocol##StringProtocol#>, value: <#T##Binding<Strideable>#>)
        }
        .navigationTitle("Todo Detail")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TodoDetailView(todo: .constant(Todo(title: "feed the cdemo cat")))
        }
    }
}
