//
//  ContentView.swift
//  Logo
//
//  Created by Januarizqi Dwi Milleniantoro on 04/08/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }

        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(hex: "#D8E6CE")
                .ignoresSafeArea()

            VStack {
                Image("LogoDiobatin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 161, height: 167)
                Text("Diobatin")
                    .font(.custom("Poppins-Bold", size: 36))
                    .foregroundStyle(Color(hex: "#184D4F"))
            }
        }
    }
}

#Preview {
    ContentView()
}
