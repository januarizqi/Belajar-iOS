//
//  ContentView.swift
//  Logo
//
//  Created by Januarizqi Dwi Milleniantoro on 04/08/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("LogoDiobatin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 161, height: 167)
                Text("Diobatin")
                    .font(.custom("Poppins-Bold", size: 36))
            }
        }
    }
}

#Preview {
    ContentView()
}
