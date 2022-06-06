//
//  ProfileView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("profile")
                .frame(width: 128, height: 128)
                .cornerRadius(128)
            Text("John Doe")
                .fontWeight(.bold)
                .font(.title2)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
