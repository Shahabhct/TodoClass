//
//  NewTodoView.swift
//  TodoClass
//
//  Created by shahab on 07/08/2023.
//

import SwiftUI

struct NewTodoView: View {
    
    @State private var title = ""
    @State private var subtitle = ""
    @Binding var sourcetodo: [Todo]
    @Environment(\.dismiss) var hidesheet
    var body: some View {
        Form {
            Section {
                TextField ("Add Title: ", text: $title)
                TextField ("Add  Sub Title: ", text: $subtitle)
            }
            Section {
                Button("Save"){
                    let todo = Todo(title: title, subtitle: subtitle)
                    sourcetodo.append(todo)
                    hidesheet()
                }
                Button("Cancle", role: .destructive) {
                    hidesheet()
                }
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(sourcetodo: .constant([]))
    }
}
