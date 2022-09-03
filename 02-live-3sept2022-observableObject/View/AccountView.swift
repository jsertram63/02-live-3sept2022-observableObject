//
//  AcountView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import SwiftUI

struct AccountView: View {
    
    @EnvironmentObject var accountVM: AccountViewModel
    
    var body: some View {
        // Container activant une notion de navigation entre les vues
        NavigationView {
            VStack {
                // Container List qui génère une liste d'éléments ou autres Vues
                // Peut prendre en paramètres une boucle ForEach
                List(accountVM.purchased, id: \.id) { label in
                    HStack {
                        Text(label.wordings)
                        
                        Spacer()
                        
                        Text(String(format: "%d", label.prices) + "€")
                    }
                }
            }
            // Modifyer affichant un titre
            .navigationTitle("Opérations")
            // Modifyer du comportement de ce titre au scroll
            .navigationBarTitleDisplayMode(.large)
            // Modifyer ajoutant d'autres éléments vues
            .navigationBarItems(
                // A gauche
                leading:
                    Text("\(accountVM.user.fullName)")
                    .fontWeight(.medium)
                ,
                // A droite
                trailing:
                    Image(systemName: "person.crop.circle.fill.badge.minus")
                    .renderingMode(.original)
                    .font(.title3)
                    .onTapGesture {
                        withAnimation {
                            accountVM.isConnected = false
                        }
                    }
            )
            .background(Color.cyan.ignoresSafeArea())
            // A l'apparition de la vue on initialise une apparence de la NavigationTiltle
            .onAppear {
                UINavigationBar.appearance().largeTitleTextAttributes = [
                    .foregroundColor: UIColor.black,
                    .font : UIFont(name:"Noteworthy", size: 30)!
                ]
                
                UITableView.appearance().backgroundColor = .clear
            }
        }
    }
}

struct AcountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .environmentObject(AccountViewModel())
    }
}
