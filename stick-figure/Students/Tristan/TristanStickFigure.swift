//
//  TristanStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct TristanStickFigure: StickFigureSubmission {
    let studentName = "Tristan"
    
    var decorations: [EmojiView] {
        [
            EmojiView(symbol: "🧑‍🦱", size: 40, x: 0, y: -170),
            EmojiView(symbol: "⚽", size: 35, x: -60, y: -60),
            EmojiView(symbol: "🏀", size: 35, x: 60, y: -60),
            EmojiView(symbol: "👕", size: 100, x: 0, y: -50),
            EmojiView(symbol: "🩳", size: 60, x: 0, y: 20),
            EmojiView(symbol: "👟", size: 60, x: -45, y: 80),
            EmojiView(symbol: "👟", size: 60, x: 45, y: 80),
            EmojiView(symbol: "💪", size: 30, x: 90, y: -50)
        ]
    }
    
    var strokeColor: Color { .green }
}