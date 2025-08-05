//
//  ContentView.swift
//  GuessGame
//
//  Created by Januarizqi Dwi Milleniantoro on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    
    var correctAnswer = 0
    @State var score = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Question")
                    .font(.system(size: 50, weight: .bold))
                    .frame(height: 350)
            }
            
            HStack{
                Spacer()
                Text("Score: \(score)")
                    .font(.system(size: 15, weight: .semibold))
                    .padding()
            }
            
            Button(action: {
                if correctAnswer == 0 {
                    score += 1
                } else {
                    score -= 1
                }
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
                if correctAnswer == 1 {
                    score += 1
                } else {
                    score -= 1
                }
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
                if correctAnswer == 2 {
                    score += 1
                } else {
                    score -= 1
                }
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
