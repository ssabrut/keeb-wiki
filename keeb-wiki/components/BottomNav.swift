//
//  BottomNav.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 31/05/22.
//

import SwiftUI

struct BottomNav: View {
    var body: some View {
        TabView {
            Text("")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Text("Favorite screen")
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }
            Text("Profile screen")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct BottomNav_Previews: PreviewProvider {
    static var previews: some View {
        BottomNav()
    }
}
