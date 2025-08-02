//
//  YJStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct YJStickFigure: StickFigureSubmission {
    let studentName = "YJ"
    let description = "Bobby the Cool Dude"
    
    var decorations: [Decoration] {
        [
            Decoration("🧢", size: 40, x: 0, y: -170),
            Decoration("🕶️", size: 38, x: 0, y: -145),
            Decoration("👄", size: 30, x: 0, y: -110),
            Decoration("👕", size: 100, x: 0, y: -50),
            Decoration("👋", size: 35, x: -60, y: -60),
            Decoration("👍", size: 35, x: 60, y: -60),
            Decoration("👟", size: 60, x: -45, y: 80),
            Decoration("👟", size: 60, x: 45, y: 80)
        ]
    }
}