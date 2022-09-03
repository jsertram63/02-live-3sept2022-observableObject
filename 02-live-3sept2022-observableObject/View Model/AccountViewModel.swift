//
//  AccountViewModel.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import Foundation

class AccountViewModel: ObservableObject {
    
    @Published var user: UserModel = UserModel(fullName: "Pierric Marye", email: "pierric.marye@gmail.com", password: "&Pm380?deviOS!")
    
    @Published var purchased: [PurchasesModel] = [
        PurchasesModel(wordings: "MacBook Air", prices: 1200),
        PurchasesModel(wordings: "Apple Licence", prices: 99)
    ]
}
