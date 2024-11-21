//
//  BottomTextView.swift
//  Code History CC
//
//  Created by Stuart Jones on 18/11/2024.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}


#Preview {
    BottomTextView(str: "Hello, World!")
}
