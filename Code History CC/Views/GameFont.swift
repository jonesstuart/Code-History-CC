//
//  GameFont.swift
//  Code History CC
//
//  Created by Stuart Jones on 16/11/2024.
//

import SwiftUI

struct GameFont: View {
    let fontStyles: [(name: String, font: Font)] = [
        ("Large Title", .largeTitle),
        ("Title", .title),
        ("Title2", .title2),
        ("Title3", .title3),
        ("Headline", .headline),
        ("Subheadline", .subheadline),
        ("Body", .body),
        ("Callout", .callout),
        ("Footnote", .footnote),
        ("Caption", .caption),
        ("Caption2", .caption2)
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(fontStyles, id: \.name) { style in
                    FontInfoView(name: style.name, font: style.font)
                }
            }
        }
    }
}

struct FontInfoView: View {
    let name: String
    let font: Font
    
    var body: some View {
        HStack {
            Text(name)
                .font(font)
                .padding()
            Spacer()
            Text("Sample Text")
                .font(font)
                .padding()
        }
        .foregroundColor(GameColor._black)
        .background(GameColor._gray)
    }
}


#Preview {
    GameFont()
}
