//
//  BorderedButton.swift
//  Macatia
//
//  Created by David Clain on 21/08/2024.
//

import SwiftUI

struct BorderedButton: View {
    private var title: String
    private var backgroundColor: Color
    private var borderColor: Color
    private var textColor: Color
    private var action: () -> Void
    
    init(title: String, backgroundColor: Color, borderColor: Color, textColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
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
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(borderColor, lineWidth: 2))
        }
        .padding(.horizontal)
    }
}

#Preview {
    BorderedButton(title: "Inscription", backgroundColor: .white, borderColor: .black, textColor: .black, action: { print("Bouton inscription appuyé") })
}
