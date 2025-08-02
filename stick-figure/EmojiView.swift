//
//  EmojiView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//

import SwiftUI

/// Reusable emoji decorator
struct EmojiView: View {
    let symbol: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    var body: some View {
        Text(symbol)
            .font(.system(size: size))
            .offset(x: x, y: y)
    }
}