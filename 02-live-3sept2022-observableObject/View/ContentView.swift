//
//  ContentView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var accountVM: AccountViewModel
    
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
                    LoginView(emailAdress2: $emailAdress1, password2: $password1)
                    
                    Button {
                        withAnimation() {
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
            .environmentObject(AccountViewModel())
    }
}
