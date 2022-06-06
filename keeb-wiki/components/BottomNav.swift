//
//  BottomNav.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 31/05/22.
//

import SwiftUI

struct BottomNav: View {
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(1)
            FavoriteView()
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }
                .tag(2)
            Text("Profile screen")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(3)
        }
    }
}

struct BottomNav_Previews: PreviewProvider {
    static var previews: some View {
        BottomNav()
    }
}
