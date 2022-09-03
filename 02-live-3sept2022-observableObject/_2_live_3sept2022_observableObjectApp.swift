//
//  _2_live_3sept2022_observableObjectApp.swift
//  02-live-3sept2022-observableObject
//
//  Created by Lunack on 02/09/2022.
//

import SwiftUI

@main
struct _2_live_3sept2022_observableObjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            // Doit également être en relation avec la classe AccountViewModel() car il s'agit du moteur de rendu de l'Application
                .environmentObject(AccountViewModel())
        }
    }
}
