//
//  AliceStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct AliceStickFigure: StickFigureSubmission {
    let studentName = "Alice"
    let description = "Artist extraordinaire"
    
    var decorations: [Decoration] {
        [
            Decoration("👩‍🎨", size: 40, x: 0, y: -170),
            Decoration("🎨", size: 30, x: -50, y: -60),
            Decoration("🖌️", size: 30, x: 50, y: -60),
            Decoration("👗", size: 100, x: 0, y: -50),
            Decoration("👠", size: 50, x: -45, y: 80),
            Decoration("👠", size: 50, x: 45, y: 80),
            Decoration("✨", size: 25, x: -80, y: -100),
            Decoration("✨", size: 25, x: 80, y: -100)
        ]
    }
    
    var strokeColor: Color { .purple }
}