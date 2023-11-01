//
//  ToDoListItemView.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//

import SwiftUI

struct ToDoListItemView: View {
    let item: ToDoListItem
    @StateObject var viewModel = ToDoListItemViewViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button {
                viewModel.toogleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill": "circle")
                    .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Comprando Iphone", dueDate: 1698525682.814194, createDate: 1698525688.0803308, isDone: true))
}
