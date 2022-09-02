//
//  AcountView.swift
//  02-live-3sept2022-observableObject
//
//  Created by Pierric Marye on 02/09/2022.
//

import SwiftUI

struct AcountView: View {
    var wordings = ["MacBook Air", "Apple developer Licence"]
    var prices = [1200, 99]
    
    var body: some View {
        NavigationView {
            
            List {
                HStack {
                    ForEach(wordings, id: \.self) { wording in
                        Text(wording)
                    }
                    
                    ForEach(prices, id: \.self) { price in
                        Text("\(price)")
                    }
                }
            }
        }
    }
}

struct AcountView_Previews: PreviewProvider {
    static var previews: some View {
        AcountView()
    }
}
