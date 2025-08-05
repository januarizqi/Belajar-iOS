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
            VStack {
                Text("Question")
                    .font(.system(size: 50, weight: .bold))
                    .frame(height: 350)
            }
            
            HStack{
                Spacer()
                Text("Score: 0")
                    .font(.system(size: 15, weight: .semibold))
                    .padding()
            }
            
            Button(action: {
                print("Button 1")
            }, label: {
                Image("Cat")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            })
            Button(action: {
                print("Button 2")
            }, label: {
                Image("Dog")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            })
            Button(action: {
                print("Button 3")
            }, label: {
                Image("Tiger")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
