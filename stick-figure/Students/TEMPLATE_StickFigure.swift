//
//  TEMPLATE_StickFigure.swift
//  stick-figure
//
//  INSTRUCTIONS:
//  1. Copy this file to your own folder: Students/YourName/YourNameStickFigure.swift
//  2. Rename the struct from TEMPLATE to YourName (e.g., AliceStickFigure)
//  3. Update the studentName and description
//  4. Customize the decorations array with your own emoji choices
//  5. Run Scripts/generate_registry.sh to update the registry
//  6. Test your stick figure in the app!
//

import SwiftUI

struct TEMPLATEStickFigure: StickFigureSubmission {
    let studentName = "Your Name"
    let description = "Description of your stick figure"
    
    var decorations: [Decoration] {
        [
            // Head accessories (hats, hair, etc.)
            Decoration("🎩", size: 40, x: 0, y: -170),
            
            // Face accessories (glasses, eyes, etc.)
            Decoration("👓", size: 38, x: 0, y: -145),
            
            // Mouth/facial features
            Decoration("😊", size: 30, x: 0, y: -110),
            
            // Body/clothing
            Decoration("👔", size: 100, x: 0, y: -50),
            
            // Left hand/arm accessories
            Decoration("✋", size: 35, x: -60, y: -60),
            
            // Right hand/arm accessories
            Decoration("🤘", size: 35, x: 60, y: -60),
            
            // Feet/shoes
            Decoration("👢", size: 60, x: -45, y: 80),
            Decoration("👢", size: 60, x: 45, y: 80),
            
            // Add more decorations as needed!
            // You can also add floating objects around your stick figure
        ]
    }
    
    // Optional: Customize colors
    // var strokeColor: Color { .blue }
    // var strokeWidth: CGFloat { 5 }
}