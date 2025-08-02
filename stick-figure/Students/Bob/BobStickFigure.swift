//
//  BobStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct BobStickFigure: StickFigureSubmission {
    let studentName = "Bob"
    let description = "Sporty guy"
    
    var decorations: [Decoration] {
        [
            Decoration("🧑‍🦱", size: 40, x: 0, y: -170),
            Decoration("⚽", size: 35, x: -60, y: -60),
            Decoration("🏀", size: 35, x: 60, y: -60),
            Decoration("👕", size: 100, x: 0, y: -50),
            Decoration("🩳", size: 60, x: 0, y: 20),
            Decoration("👟", size: 60, x: -45, y: 80),
            Decoration("👟", size: 60, x: 45, y: 80),
            Decoration("💪", size: 30, x: 90, y: -50)
        ]
    }
    
    var strokeColor: Color { .green }
}