//
//  UserModel.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 03/09/2022.
//

import Foundation

struct UserModel: Identifiable {
    var id = UUID()
    var fullName: String
    var email: String
    var password: String
}
