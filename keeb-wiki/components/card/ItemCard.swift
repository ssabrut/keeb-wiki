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
            Divider()
                .background(.black)
                .padding(EdgeInsets(top: 0, leading: padd, bottom: 0, trailing: padd))
            Text("Momoka")
            Image("2-removebg-preview")
        }
        .border(.gray)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.black)
        )
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard()
    }
}
