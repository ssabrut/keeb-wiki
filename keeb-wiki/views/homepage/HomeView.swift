//
//  HomeView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct HomeView: View {
    private var container: CGFloat = 24.0
    @State private var query: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6) {
                SearchBar()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: container, bottom: 0, trailing: container))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
