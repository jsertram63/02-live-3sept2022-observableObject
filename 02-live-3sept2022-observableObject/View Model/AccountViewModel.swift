//
//  AccountViewModel.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import Foundation

class AccountViewModel: ObservableObject {
    @Published var purchased: [PurchasesModel] = [
        PurchasesModel(wordings: "MacBook Air", prices: 1200),
        PurchasesModel(wordings: "Apple developer Licence", prices: 99)
    ]
    
    
}
