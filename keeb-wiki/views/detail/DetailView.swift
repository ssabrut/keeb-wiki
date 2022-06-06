//
//  DetailView.swift
//  keeb-wiki
//
//  Created by MacBook Pro on 06/06/22.
//

import SwiftUI

struct DetailView: View {
    let name: String
    let image: String
    let layout: String
    let mountin_system: String
    let weight: String
    let typing_angle: String
    let front_height: String
    
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Text(name)
                Image(image)
                Text("Layout: \(layout)")
                    .foregroundColor(.gray)
                    .padding()
                VStack(alignment: .leading) {
                    Text("Specification")
                        .fontWeight(.bold)
                        .font(.title2)
                    Text("Mounting system: \(mountin_system)")
                        .font(.caption)
                    Text("Weight: \(weight)")
                        .font(.caption)
                    Text("Typing angle: \(typing_angle)")
                        .font(.caption)
                    Text("Front height: \(front_height)")
                        .font(.caption)
                }
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            name: "7V",
            image: "7v",
            layout: "65% Keyboard",
            mountin_system: "Leafspring PCB-Mount",
            weight: "2.6kg built",
            typing_angle: "7.0'",
            front_height: "-"
        )
    }
}
