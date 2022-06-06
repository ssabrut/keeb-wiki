//
//  keeb_wikiApp.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 30/05/22.
//

import SwiftUI

@main
struct keeb_wikiApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenVIew()
                .environmentObject(modelData)
        }
    }
}
