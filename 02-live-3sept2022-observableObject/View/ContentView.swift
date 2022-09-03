//
//  ContentView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    // Décorateur permettant de consulter notre objet mis en place avec la class AccountViewModel
    @EnvironmentObject var accountVM: AccountViewModel
    
    // Décorateur d'état de la propriété; va observer le changement.
    @State var emailAdress1 = ""
    @State var password1 = ""
    
    var body: some View {
        // Container en pile
        ZStack {
            // Définition de la couleur d'arrière plan
            // Il s'agit de la première couche visuel
            Color.cyan.ignoresSafeArea(edges: .all)
            
            // Container vertical
            // Secondes couches visuelles
            VStack {
                if accountVM.isConnected == true {
                    AccountView()
                } else {
                    // Appel de la vue avec ses propriétés implémentées en paramètres.
                    // Ici emailAdress2 et password2
                    LoginView(emailAdress2: $emailAdress1, password2: $password1)
                    
                    // Vue Bouton qui possède une action et un label
                    Button {
                        // méthode générant une animation de changement de vue si les codition sont remplies
                        withAnimation() {
                            // On vérifie si l'email et mot de passe récupérés sont identiques au constructeur user
                            if accountVM.user.email == emailAdress1 && accountVM.user.password == password1 {
                                accountVM.isConnected = true
                            }
                        }
                    } label: {
                        Text("Connexion")
                            .fontWeight(.bold)
                            .padding(8.0)
                    }
                    .buttonStyle(.borderedProminent)
                    .shadow(radius: 5)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // Rend la preview en liaison avec la classe AccountViewModel
            .environmentObject(AccountViewModel())
    }
}
