//
//  ContentView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // Container en pile
        ZStack {
            // Définition de la couleur d'arrière plan
            // Il s'agit de la première couche visuel
            Color.cyan.ignoresSafeArea(edges: .all)
            
            // Container vertical
            // Seconde couche visuel
           LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
