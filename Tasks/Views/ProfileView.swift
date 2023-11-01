//
//  ProfileView.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 125, height: 125)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Name: ")
                                .bold()
                            Text(user.name)
                        }.padding()
                        
                        HStack {
                            Text("Email: ")
                                .bold()
                            Text(user.email)
                        }.padding()
                        
                        HStack {
                            Text("Member since: ")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }.padding()
                    }.padding(.bottom, 32)
                    
                    Button("Log Out") {
                        viewModel.logout()
                    }
                    .tint(.red)
                    
                    Spacer()
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ProfileView()
}
