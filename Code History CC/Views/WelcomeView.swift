//
//  WelcomeView.swift
//  Code History CC
//
//  Created by Stuart Jones on 16/11/2024.
//

import SwiftUI

struct WelcomeView: View {
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer().frame(height: 40)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                        NavigationLink(destination: GameView(), label: {
                            HStack {
                                Spacer()
                                Text("Okay, let's do this!")
                                    .font(.body)
                                    .bold()
                                    .padding()
                                Spacer()
                            }.background(accentColor)
                        })
                }
                .foregroundColor(.white)
            }
        
        }
    }
}

#Preview {
    WelcomeView()
}
