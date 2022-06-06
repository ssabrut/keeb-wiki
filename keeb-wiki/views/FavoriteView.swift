//
//  FavoriteView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct FavoriteView: View {
    private var container: CGFloat = 24.0
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = true
    
    var filteredKeyboards: [Keyboard] {
        modelData.keyboards.filter { keyboard in
            (!showFavoriteOnly || keyboard.is_favorite)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            NavigationView {
                ZStack {
                    List {
                        ForEach(filteredKeyboards) { keyboard in
                            NavigationLink {
                                DetailView(keyboard: keyboard)
                            } label: {
                                ItemCard(keyboard: keyboard)
                            }
                        }
                    }
                }
                .navigationTitle("Favorites")
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
            .environmentObject(ModelData())
    }
}
