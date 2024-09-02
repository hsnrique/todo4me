//
//  LoginView.swift
//  ToDoList
//
//  Created by Henrique on 01/09/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", background: .accentColor)
                // Login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle() )
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Enter password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CustomButton(
                        label: "Login",
                        labelcolor: .white,
                        background: .accentColor
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                // Create account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an account", destination: RegisterView())
                }
            }
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
