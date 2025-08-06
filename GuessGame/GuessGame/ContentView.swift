//
//  ContentView.swift
//  GuessGame
//
//  Created by Januarizqi Dwi Milleniantoro on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var correctAnswer = 0
    @State var score = 0
    @State var questionTitle = "Who?"
    @State var questionSubtile = ""
    
    var body: some View {
        VStack {
            VStack {
                Text("\(questionTitle)")
                    .font(.system(size: 50, weight: .bold))
                Text("\(questionSubtile)")
                    .font(.system(size: 20, weight: .medium))
            }
            .frame(height: 350)
            
            HStack{
                Spacer()
                Text("Score: \(score)")
                    .font(.system(size: 15, weight: .semibold))
                    .padding()
            }
            
            Button(action: {
                check(answer: 0)
            }, label: {
                Image("cat")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            })
            Button(action: {
                check(answer: 1)
            }, label: {
                Image("dog")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            })
            Button(action: {
                check(answer: 2)
            }, label: {
                Image("fox")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            })
            Spacer()
        }
        .padding()
    }
    
    func check(answer: Int) {
        if answer == correctAnswer {
            score += 1
        } else {
            if score != 0 {
                score -= 1
            }
        }
        if correctAnswer == 0 {
            questionSubtile = "Correct answer is cat"
        } else if correctAnswer == 1 {
            questionSubtile = "Correct answer is dog"
        } else {
            questionSubtile = "Correct answer is fox"
        }
        randomizeCorrectAnswer()
    }
    
    func randomizeCorrectAnswer() {
        let randomCorrectAnswer = Int.random(in: 0..<3)
        correctAnswer = randomCorrectAnswer
    }
    
}

#Preview {
    ContentView()
}
