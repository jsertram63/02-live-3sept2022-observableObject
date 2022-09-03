//
//  LoginView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var emailAdress2: String
    @Binding var password2: String
    
    @EnvironmentObject var accountVM: AccountViewModel
    
    var body: some View {
        VStack {
            // Container Text affichira du contenu de type String
            Text("Bienvenue sur SwiftUI Bank")
                .font(.title2)
                .foregroundColor(.white)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)
            
            // Container vue séparateur
            Spacer()
            
            VStack(alignment: .center, spacing: 40.0) {
                Image("SwiftUIBank")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100.0, height: 100.0)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .padding(.top)
                
                VStack {
                    // Container vue de champ
                    // Prend en paramètres un type String et la propriété en Binding avec $ (liaison)
                    TextField("example@example.fr", text: $emailAdress2)
                        .padding()
                        .background(.white)
                        .cornerRadius(5.0)
                        .padding(.horizontal, 15)
                        .padding(.bottom, 5)
                    
                    // SecureField se comporte exactement comme TextField mais cache les caractères
                    SecureField("**********", text: $password2)
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
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        // Lorsqu'on crée un vue qui possède des propriétés, il faut également lui passer ces valeurs (fictives ou réelles) en paramètres
        LoginView(emailAdress2: .constant("example@example.fr"), password2: .constant("***********"))
            .environmentObject(AccountViewModel())
            .background(Color.cyan.ignoresSafeArea())
    }
}
