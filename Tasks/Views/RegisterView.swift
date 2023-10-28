//
//  RegisterView.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(
                title: "Register",
                subtitle: "Start organizing tods",
                angle: -15,
                backgroundColor: .orange
            )
            
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password Address", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Create Account", backgroundColor: .green, action: viewModel.register)
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
