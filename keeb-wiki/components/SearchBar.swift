//
//  SearchBar.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 31/05/22.
//

import SwiftUI

struct SearchBar: View {
    @State private var query: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("Gray"))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search for an item", text: $query)
            }
            .foregroundColor(.gray)
            .padding(.leading, 8)
        }
        .frame(height: 40)
        .cornerRadius(4)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
