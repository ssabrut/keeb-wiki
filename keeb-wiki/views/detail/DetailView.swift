//
//  DetailView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var modelData: ModelData
    var keyboard: Keyboard
    
    var keyboardIndex: Int {
        modelData.keyboards.firstIndex(where: { $0.id == keyboard.id })!
    }
    
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Text(keyboard.name)
                Image(keyboard.image)
                HStack {
                    Text("Layout: \(keyboard.layout)")
                        .foregroundColor(.gray)
                        .padding()
                    FavoriteButton(isSet: $modelData.keyboards[keyboardIndex].is_favorite)
                }
                VStack(alignment: .leading) {
                    Text("Specification")
                        .fontWeight(.bold)
                        .font(.body)
                    Text("Mounting system: \(keyboard.mounting_system)")
                        .font(.subheadline)
                    Text("Weight: \(keyboard.weight)")
                        .font(.subheadline)
                    Text("Typing angle: \(keyboard.typing_angle)")
                        .font(.subheadline)
                    Text("Front height: \(keyboard.front_height)")
                        .font(.subheadline)
                }
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        DetailView(keyboard: ModelData().keyboards[0])
            .environmentObject(modelData)
    }
}
