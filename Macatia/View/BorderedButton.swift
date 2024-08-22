//
//  BorderedButton.swift
//  Macatia
//
//  Created by David Clain on 21/08/2024.
//

import SwiftUI

struct BorderedButton: View {
    var title: String
    var backgroundColor: Color
    var borderColor: Color
    var textColor: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, minHeight: 44)
                .padding()
                .background(backgroundColor)
                .foregroundColor(textColor)
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(borderColor, lineWidth: 2))
        }
        .padding(.horizontal)
    }
}

#Preview {
    BorderedButton(title: "Inscription", backgroundColor: .white, borderColor: .black, textColor: .black, action: { print("Bouton inscription appuyé") })
}
