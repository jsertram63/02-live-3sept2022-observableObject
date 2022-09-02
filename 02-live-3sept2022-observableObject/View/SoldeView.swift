//
//  SoldeView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import Foundation
import SwiftUI

struct SoldeView : View {
    
    
    // déclaration de la variable pour pouvoir l'observer
    @EnvironmentObject var profilModel:Profile
    
    var body: some View {
        
        if profilModel.authentifie == true {
            Text("10000000.00 euros")
        }else {
            Text("XXXXXX euros")
        }
        
        
    }
    
    
}
