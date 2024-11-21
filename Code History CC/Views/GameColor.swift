//
//  ColorView.swift
//  Code History CC
//
//  Created by Stuart Jones on 16/11/2024.
//

import SwiftUI

struct GameColor: View {
    static let main = Color(red: 20/255, green: 28/255, blue: 58/255)
    static let accent = Color(red: 48/255, green: 105/255, blue: 240/255)
    static let correctGuess = Color.green
    static let incorrectGuess = Color.red
    static let _black = Color.black
    static let _white = Color.white
    static let _gray = Color.gray.opacity(0.2)

    
    var body: some View {
        ScrollView {
            VStack {
                ColorInfoView(name: "main", color: GameColor.main)
                ColorInfoView(name: "accent", color: GameColor.accent)
                ColorInfoView(name: "correctGuess", color: GameColor.correctGuess)
                ColorInfoView(name: "incorrectGuess", color: GameColor.incorrectGuess)
            }
            //.frame(maxHeight: .infinity, alignment: .top)
            .padding()
        }
    }
}

struct ColorInfoView: View {
    let name: String
    let color: Color
    
    var body: some View {
        HStack {
            Text(name)
                .padding()
            Spacer()
            Text("HSL: \(hslString(from: color))")
                .padding()
        }
        .foregroundColor(.white)
        .background(color)
    }
}
        
        func hslString(from color: Color) -> String {
            let components = color.cgColor?.components
            let r = (components?[0] ?? 0)
            let g = (components?[1] ?? 0)
            let b = (components?[2] ?? 0)
            
            let max = Swift.max(r, g, b)
            let min = Swift.min(r, g, b)
            let delta = max - min
            
            var h: Double = 0
            var s: Double = 0
            let l = (max + min) / 2
            
            if delta != 0 {
                s = l > 0.5 ? delta / (2.0 - max - min) : delta / (max + min)
                
                if max == r {
                    h = (g - b) / delta + (g < b ? 6 : 0)
                } else if max == g {
                    h = (b - r) / delta + 2
                } else {
                    h = (r - g) / delta + 4
                }
                
                h /= 6
            }
            
            return String(format: "(%.0f, %.0f%%, %.0f%%)", h * 360, s * 100, l * 100)
        }
    





#Preview {
    GameColor()
}
