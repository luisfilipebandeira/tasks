//
//  LoginView.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done",
                    angle: 15,
                    backgroundColor: .pink
                )
                
                // LoginForm
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password Address", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In", backgroundColor: .blue, action: viewModel.login)
                }
                .offset(y: -50)
                
                // Register
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
