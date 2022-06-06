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
            SearchBar()
                .padding(EdgeInsets(top: 0, leading: container, bottom: 0, trailing: container))
            
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
        
//        VStack {
//            VStack(alignment: .leading, spacing: 6) {
//                SearchBar()
//                ScrollView {
//                    VStack(alignment: .leading) {
//                        Text("Categories")
//                            .fontWeight(.semibold)
//                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//                        HStack {
//                            CategoryCard()
//                            CategoryCard()
//                            CategoryCard()
//                        }
//                    }
//                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
//                    VStack(alignment: .leading) {
//                        Text("Keyboard")
//                            .fontWeight(.semibold)
//                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
//                        List(keyboards, id: \.id) { keyboard in
//                            ItemCard(keyboard: keyboard)
//                        }
//                    }
//                }
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(EdgeInsets(top: 0, leading: container, bottom: 0, trailing: container))
//        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
