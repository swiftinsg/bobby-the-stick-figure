//
//  TEMPLATE_StickFigure.swift
//  stick-figure
//
//  INSTRUCTIONS:
//  1. Copy this file to your own folder: Students/YourName/YourNameStickFigure.swift
//  2. Rename the struct from TEMPLATE to YourName (e.g., AliceStickFigure)
//  3. Update the studentName to your name
//  4. Customize the decorations array with your own emoji choices
//  5. Build the project - the registry updates automatically!
//  6. Test your stick figure in the app!
//

import SwiftUI

struct TEMPLATEStickFigure: StickFigureSubmission {
    let studentName = "Your Name"
    
    var decorations: [EmojiView] {
        [
            // Head accessories (hats, hair, etc.)
            EmojiView(symbol: "🎩", size: 40, x: 0, y: -170),
            
            // Face accessories (glasses, eyes, etc.)
            EmojiView(symbol: "👓", size: 38, x: 0, y: -145),
            
            // Mouth/facial features
            EmojiView(symbol: "😊", size: 30, x: 0, y: -110),
            
            // Body/clothing
            EmojiView(symbol: "👔", size: 100, x: 0, y: -50),
            
            // Left hand/arm accessories
            EmojiView(symbol: "✋", size: 35, x: -60, y: -60),
            
            // Right hand/arm accessories
            EmojiView(symbol: "🤘", size: 35, x: 60, y: -60),
            
            // Feet/shoes
            EmojiView(symbol: "👢", size: 60, x: -45, y: 80),
            EmojiView(symbol: "👢", size: 60, x: 45, y: 80),
            
            // Add more decorations as needed!
            // You can also add floating objects around your stick figure
        ]
    }
    
    // Optional: Customize colors
    // var strokeColor: Color { .blue }
    // var strokeWidth: CGFloat { 5 }
}