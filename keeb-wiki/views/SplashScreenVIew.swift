//
//  SplashScreenVIew.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct SplashScreenVIew: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            LoginView()
        } else {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                VStack {
                    Text("KEEB\nWIKI")
                        .foregroundColor(.white)
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenVIew_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenVIew()
    }
}
