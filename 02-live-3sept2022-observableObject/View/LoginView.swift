//
//  LoginView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var emailAdress: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            // Container Text affichira du contenu de type String
            Text("Bienvenue sur SwiftUI Bank")
                .font(.title2)
                .foregroundColor(.white)
                .bold()
                .multilineTextAlignment(.center)
            
            Spacer()
            
            VStack(alignment: .center, spacing: 50.0) {
                Image(systemName: "banknote.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100.0)
                    .foregroundColor(.orange)
                
                VStack {
                    TextField("example@example.fr", text: $emailAdress)
                        .padding()
                        .background(.white)
                        .cornerRadius(5.0)
                        .padding(.horizontal, 15)
                        .padding(.bottom, 5)
                    
                    TextField("**********", text: $password)
                        .padding()
                        .background(.white)
                        .cornerRadius(5.0)
                        .padding(.horizontal, 15)
                        .padding(.bottom, 20)
                }
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(15)
            .shadow(radius: 5)
            .padding()
            
            Button {
                //
            } label: {
                Text("Connexion")
                    .fontWeight(.bold)
                    .padding(8.0)
            }
            .buttonStyle(.borderedProminent)
            .shadow(radius: 5)
            .padding()
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .background(Color.cyan.ignoresSafeArea())
    }
}
