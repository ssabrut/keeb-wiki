//
//  CategoryCard.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 03/06/22.
//

import SwiftUI

struct CategoryCard: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
            Text("Keyboard")
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.black)
        )
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard()
    }
}
