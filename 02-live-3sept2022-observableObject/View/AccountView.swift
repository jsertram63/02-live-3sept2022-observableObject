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
        NavigationView {
            VStack {
                List(accountVM.purchased, id: \.id) { label in
                    HStack {
                        Text(label.wordings)
                        
                        Spacer()
                        
                        Text(String(format: "%d", label.prices) + "€")
                    }
                }
            }
            .navigationTitle("Opérations")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading:
                    Text("\(accountVM.user.fullName)")
                    .fontWeight(.medium)
                ,
                trailing:
                    Image(systemName: "person.crop.circle.fill.badge.minus")
                    .renderingMode(.original)
                    .font(.title3)
            )
            .background(Color.cyan.ignoresSafeArea())
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
