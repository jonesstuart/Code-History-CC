//
//  ScoreViewModel.swift
//  Code History CC
//
//  Created by Stuart Jones on 18/11/2024.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
