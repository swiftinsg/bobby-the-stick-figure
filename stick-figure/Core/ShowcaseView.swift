//
//  ShowcaseView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

struct ShowcaseView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Mesh gradient background (iOS 18+)
                if #available(iOS 18.0, *) {
                    MeshGradient(
                        width: 3,
                        height: 2,
                        points: [
                            [0, 0], [0.5, 0], [1, 0],
                            [0, 1], [0.5, 1], [1, 1]
                        ],
                        colors: [
                            Color.blue.opacity(0.05), Color.purple.opacity(0.08), Color.pink.opacity(0.05),
                            Color.blue.opacity(0.08), Color.purple.opacity(0.05), Color.pink.opacity(0.08)
                        ]
                    )
                    .ignoresSafeArea()
                } else {
                    // Fallback gradient for older iOS versions
                    LinearGradient(
                        colors: [
                            Color.blue.opacity(0.05),
                            Color.purple.opacity(0.08),
                            Color.pink.opacity(0.05)
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .ignoresSafeArea()
                }
                
                // All stick figures wandering on one screen
                ForEach(Array(StudentRegistry.allSubmissions.enumerated()), id: \.offset) { index, submission in
                    WanderingStickFigure(
                        submission: submission,
                        canvasWidth: geometry.size.width,
                        canvasHeight: geometry.size.height
                    )
                }
                
                // Title overlay
                VStack {
                    Text("Student Stick Figure Showcase")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    Spacer()
                }
            }
        }
    }
}