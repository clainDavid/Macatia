//
//  CustomButton.swift
//  Macatia
//
//  Created by David Clain on 21/08/2024.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var backgroundColor: Color
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
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomButton(title: "Connexion", backgroundColor: .yellow, textColor: .black, action: { print("Bouton connexion appuyé") }  )
}
