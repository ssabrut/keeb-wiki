//
//  RegisterView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

struct RegisterView: View {
    private let container: Float = 24.0
    private let radius: Float = 4.0
    private let spacing: Float = 18.0
    @State private var showLogin: Bool = false
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if showLogin {
            LoginView()
        } else {
            VStack {
                VStack(alignment: .leading, spacing: 6) {
                    Headline(headline: "Start your journey as", subHeadline: "KEEB WORSHIPPER")
                    TextField("Email", text: $email)
                        .padding(.horizontal, CGFloat(spacing))
                        .padding(.vertical, 12)
                        .background(Color("Gray"))
                        .cornerRadius(CGFloat(radius))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: CGFloat(spacing), trailing: 0))
                    TextField("Username", text: $username)
                        .padding(.horizontal, CGFloat(spacing))
                        .padding(.vertical, 12)
                        .background(Color("Gray"))
                        .cornerRadius(CGFloat(radius))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: CGFloat(spacing), trailing: 0))
                    TextField("Password", text: $password)
                        .padding(.horizontal, CGFloat(spacing))
                        .padding(.vertical, 12)
                        .background(Color("Gray"))
                        .cornerRadius(CGFloat(radius))
                    Button("Register") {
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .foregroundColor(Color.white)
                    .background(Color("BaseBlue"))
                    .cornerRadius(CGFloat(radius))
                    .padding(EdgeInsets(top: 18, leading: 0, bottom: 0, trailing: 0))
                    Button(action: { showLogin = true }) {
                        Text("New to keyboard? Join now.")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                            .padding(EdgeInsets(top: CGFloat(spacing), leading: 0, bottom: 0, trailing: 0))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 0.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: CGFloat(container), bottom: 0, trailing: CGFloat(container)))
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
