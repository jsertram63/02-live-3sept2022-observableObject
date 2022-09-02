//
//  AccompteView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import SwiftUI

struct AccompteView: View {
    
   // @ObservedObject var profilModel = Profile()
    @EnvironmentObject var profilModel : Profile
    
    var body: some View {
        VStack {
            SoldeView()
            if profilModel.authentifie == true {
                Text("Bonjour et bienvenue")
            }else {
                Text("Merci de s'authentifier")
            }
            Button {
                profilModel.authentifie.toggle()
            } label : {
                Text("Connectes toi")
            }
            
        }
    }
}

struct AccompteView_Previews: PreviewProvider {
    static var previews: some View {
        AccompteView()
    }
}
