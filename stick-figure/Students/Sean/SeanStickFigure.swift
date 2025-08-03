//
//  SeanStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct SeanStickFigure: StickFigureSubmission {
    let studentName = "Sean"
    
    var decorations: [EmojiView] {
        [
            // Basketball cap
            EmojiView(symbol: "🧢", size: 40, x: 0, y: -170),
            
            // Determined face
            EmojiView(symbol: "😤", size: 35, x: 0, y: -130),
            
            // Basketball jersey
            EmojiView(symbol: "🏀", size: 80, x: 0, y: -50),
            
            // Holding basketball
            EmojiView(symbol: "🏀", size: 35, x: -60, y: -60),
            
            // Victory sign
            EmojiView(symbol: "✌️", size: 35, x: 60, y: -60),
            
            // Athletic shorts (using blue square)
            EmojiView(symbol: "🟦", size: 50, x: 0, y: 10),
            
            // Basketball shoes
            EmojiView(symbol: "👟", size: 60, x: -45, y: 80),
            EmojiView(symbol: "👟", size: 60, x: 45, y: 80),
            
            // Sweat drops (showing effort)
            EmojiView(symbol: "💦", size: 20, x: -50, y: -150),
            EmojiView(symbol: "🔥", size: 25, x: 80, y: -80)
        ]
    }
    
    var strokeColor: Color { .blue }
    var strokeWidth: CGFloat { 5 }
}