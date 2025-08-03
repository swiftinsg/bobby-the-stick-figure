//
//  WanderingStickFigure.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct WanderingStickFigure: View {
    let submission: any StickFigureSubmission
    
    // Animation states
    @State private var position: CGPoint
    @State private var targetPosition: CGPoint
    @State private var rotation: Double = 0
    
    // Canvas bounds
    let canvasWidth: CGFloat
    let canvasHeight: CGFloat
    
    init(submission: any StickFigureSubmission, canvasWidth: CGFloat, canvasHeight: CGFloat) {
        self.submission = submission
        self.canvasWidth = canvasWidth
        self.canvasHeight = canvasHeight
        
        // Random starting position (adjusted for smaller stick figures)
        let margin: CGFloat = 80 // Keep away from edges
        let startX = CGFloat.random(in: margin...(canvasWidth - margin))
        let startY = CGFloat.random(in: 150...(canvasHeight - 150))
        _position = State(initialValue: CGPoint(x: startX, y: startY))
        _targetPosition = State(initialValue: CGPoint(x: startX, y: startY))
    }
    
    var body: some View {
        ZStack {
            // Stick figure with decorations
            ZStack {
                // White filled head
                Circle()
                    .fill(Color.white)
                    .frame(width: 60, height: 60)
                    .offset(y: -130)
                
                // Stroked stick figure
                StickMan()
                    .stroke(submission.strokeColor, lineWidth: submission.strokeWidth)
            }
            .frame(width: 200, height: 320)
            .overlay(
                // Add all decorations
                ForEach(Array(submission.decorations.enumerated()), id: \.offset) { _, decoration in
                    EmojiView(
                        symbol: decoration.symbol,
                        size: decoration.size,
                        x: decoration.x,
                        y: decoration.y
                    )
                }
            )
            .scaleEffect(0.5) // Make them smaller for the showcase
            .rotationEffect(.degrees(rotation))
            
            // Name label
            Text(submission.studentName)
                .font(.caption)
                .fontWeight(.medium)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.white.opacity(0.9))
                .cornerRadius(12)
                .offset(y: 100) // Below the stick figure
        }
        .position(position)
        .onAppear {
            startWandering()
        }
    }
    
    private func startWandering() {
        // Pick a new random target
        let margin: CGFloat = 80
        withAnimation(.easeInOut(duration: Double.random(in: 4...8))) {
            targetPosition = CGPoint(
                x: CGFloat.random(in: margin...(canvasWidth - margin)),
                y: CGFloat.random(in: 150...(canvasHeight - 150))
            )
            position = targetPosition
            
            // Slight rotation while moving
            rotation = Double.random(in: -3...3)
        }
        
        // Schedule next movement
        DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 4...8)) {
            startWandering()
        }
    }
}