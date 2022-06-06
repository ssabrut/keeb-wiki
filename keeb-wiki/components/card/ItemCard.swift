//
//  ItemCard.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 03/06/22.
//

import SwiftUI

struct ItemCard: View {
    private let padd: CGFloat = 32
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Zoo 65")
                .font(.title3)
                .fontWeight(.medium)
                .textCase(.uppercase)
                .padding(EdgeInsets(top: 18, leading: 0, bottom: 0, trailing: 0))
            Divider()
                .background(.black)
                .padding(EdgeInsets(top: 0, leading: padd, bottom: 0, trailing: padd))
            Text("Momoka")
            Image("2-removebg-preview")
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.black)
                .opacity(0.4)
        )
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard()
    }
}
