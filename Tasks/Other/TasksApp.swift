//
//  TasksApp.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//


import FirebaseCore
import SwiftUI

@main
struct TasksApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
