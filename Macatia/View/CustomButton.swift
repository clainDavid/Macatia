//
//  CustomButton.swift
//  Macatia
//
//  Created by David Clain on 21/08/2024.
//

import SwiftUI

struct CustomButton: View {
    private var title: String
    private var backgroundColor: Color
    private var textColor: Color
    private var action: () -> Void
    
    init(title: String, backgroundColor: Color, textColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.action = action
    }
    
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
