//
//  JiaChenStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct JiaChenStickFigure: StickFigureSubmission {
    let studentName = "JiaChen"
    
    var decorations: [EmojiView] {
        [
            // Headphones
            EmojiView(symbol: "🎧", size: 45, x: 0, y: -155),
            
            // Cool expression
            EmojiView(symbol: "😎", size: 35, x: 0, y: -130),
            
            // Gaming shirt
            EmojiView(symbol: "🎮", size: 50, x: 0, y: -50),
            
            // Music notes floating around
            EmojiView(symbol: "🎵", size: 25, x: -70, y: -90),
            EmojiView(symbol: "🎶", size: 25, x: 70, y: -90),
            
            // Holding game controller
            EmojiView(symbol: "🕹️", size: 30, x: -55, y: -60),
            
            // Peace sign
            EmojiView(symbol: "✌️", size: 30, x: 55, y: -60),
            
            // Sneakers
            EmojiView(symbol: "👟", size: 50, x: -45, y: 80),
            EmojiView(symbol: "👟", size: 50, x: 45, y: 80),
            
            // Sparkles for effect
            EmojiView(symbol: "✨", size: 20, x: -90, y: -30),
            EmojiView(symbol: "⭐", size: 20, x: 90, y: -30)
        ]
    }
    
    var strokeColor: Color { .orange }
}