//
//  ContentView.swift
//  GuessGame
//
//  Created by Januarizqi Dwi Milleniantoro on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Score: 0")
                .bold()
                .padding()
            
            Button(action: {
                print("Button 1")
            }, label: {
                Text("Button")
            })
            Button(action: {
                print("Button 2")
            }, label: {
                Text("Button")
            })
            Button(action: {
                print("Button 3")
            }, label: {
                Text("Button")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
