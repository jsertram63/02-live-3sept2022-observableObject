//
//  PurchasesModel.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import Foundation

// Struct qui va définir un model d'utilisateur
// Protocole Identifiable afin de rendre la structure repérable via un id auto-incrémenté
struct PurchasesModel: Identifiable {
    let id = UUID()
    var wordings: String
    var prices: Int
}
