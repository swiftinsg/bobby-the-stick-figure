//
//  StickFigureSubmission.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

/// Protocol that all student submissions must conform to
protocol StickFigureSubmission {
    /// Student's name
    var studentName: String { get }
    
    /// A short description of the stick figure
    var description: String { get }
    
    /// The emoji decorations for this stick figure
    var decorations: [Decoration] { get }
    
    /// Optional: Custom colors for the stick figure
    var strokeColor: Color { get }
    var strokeWidth: CGFloat { get }
}

/// Default implementations
extension StickFigureSubmission {
    var strokeColor: Color { .black }
    var strokeWidth: CGFloat { 4 }
}

/// Simple decoration model
struct Decoration {
    let emoji: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    
    init(_ emoji: String, size: CGFloat, x: CGFloat, y: CGFloat) {
        self.emoji = emoji
        self.size = size
        self.x = x
        self.y = y
    }
}