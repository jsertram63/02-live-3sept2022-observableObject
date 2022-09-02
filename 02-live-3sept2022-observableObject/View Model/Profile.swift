//
//  File.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import Foundation
import SwiftUI

class Profile : ObservableObject {
    
    @Published var authentifie = false;
    
    
}


class User : ObservableObject {
    
    @Published var email = "happingCoding@gmail.com"
    @Published var name = "Happy"
    
}
