//
//  WelcomeView.swift
//  Macatia
//
//  Created by David Clain on 21/08/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("backgroundMacatia")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .ignoresSafeArea()
                
                VStack {
                    Image("logoMacatia")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.top, 60)
                    
                    Spacer()
                    
                    CustomButton(title: "Connexion", backgroundColor: Color.yellow, textColor: Color.black, action: { print("Connexion tapped") })
                    
                    BorderedButton(title: "Inscription", backgroundColor: Color.white, borderColor: Color.black, textColor: Color.black, action: { print("Inscription tapped") })
                    .padding(.top, 8)
                    
                    Button(action: {
                        print("Continuer en tant qu'invité tapped")
                    }) {
                        Text("Continuer en tant qu'invité")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 16)
                    
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    WelcomeView()
}
