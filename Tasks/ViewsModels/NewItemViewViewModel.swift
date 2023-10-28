//
//  NewItemViewViewModel.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save(){
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            showAlert = true
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            showAlert = true
            return false
        }
        
        return true
    }
}
