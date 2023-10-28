//
//  TLButton.swift
//  Tasks
//
//  Created by Luis Bandeira on 21/10/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", backgroundColor: .pink, action: {})
}
