//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Henrique on 01/09/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
