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
                    
                    Button(action: {
                        print("Connexion tapped")
                    }) {
                        Text("Connexion")
                            .fontWeight(.bold)
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.06)
                            .background(Color.yellow)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    
                    Button(action: {
                        print("Inscription tapped")
                    }) {
                        Text("Inscription")
                            .fontWeight(.bold)
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.06)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 2)
                            )
                    }
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
