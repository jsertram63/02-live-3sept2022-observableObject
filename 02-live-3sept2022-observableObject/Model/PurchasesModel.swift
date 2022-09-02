//
//  PurchasesModel.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import Foundation

struct PurchasesModel: Identifiable {
    let id = UUID()
    var wordings: String
    var prices: Int
}
