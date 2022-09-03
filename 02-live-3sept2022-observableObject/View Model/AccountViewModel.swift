//
//  AccountViewModel.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import Foundation

// Classe qui va définir un model d'objet pour notre application
// Protocol ObservableObject afin de rendre celle consultable par nos vues
class AccountViewModel: ObservableObject {
    
    // Décorateur @Published dans le but de diffuser la propriété dans les vues
    // Mise en place d'un constructeur de Type UserModel défini dans le fichier UserModel.swift
    @Published var user: UserModel = UserModel(fullName: "Pierric Marye", email: "pierric.marye@gmail.com", password: "&Pm380?deviOS!")
    
    @Published var isConnected: Bool = false
    
    // Mise en place d'un constructeur de Type array purchasedModel défini dans le fichier PurchasedModel.swift
    @Published var purchased: [PurchasesModel] = [
        PurchasesModel(wordings: "MacBook Air", prices: -1200),
        PurchasesModel(wordings: "Apple Licence", prices: -99)
    ]
}
