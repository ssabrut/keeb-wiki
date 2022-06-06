//
//  HomeView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct HomeView: View {
    private var container: CGFloat = 24.0
    @EnvironmentObject var modelData: ModelData
    @State private var query: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            NavigationView {
                ZStack {
                    List(modelData.keyboards) { keyboard in
                        NavigationLink {
                            DetailView(keyboard: keyboard)
                        } label: {
                            ItemCard(keyboard: keyboard)
                        }
                    }
                }
                .navigationTitle("Discover Keyboards")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
