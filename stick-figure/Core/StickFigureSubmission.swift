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
    
    /// The emoji decorations for this stick figure
    var decorations: [EmojiView] { get }
    
    /// Optional: Custom colors for the stick figure
    var strokeColor: Color { get }
    var strokeWidth: CGFloat { get }
}

/// Default implementations
extension StickFigureSubmission {
    var strokeColor: Color { .black }
    var strokeWidth: CGFloat { 4 }
}

