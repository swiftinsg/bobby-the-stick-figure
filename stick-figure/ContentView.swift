//
//  ContentView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)

            EmojiView(symbol: "🧢", size: 40, x: 0,  y: -170)
            EmojiView(symbol: "🕶️", size: 38, x: 0,  y: -145)
            EmojiView(symbol: "👄", size: 30, x: 0,  y: -110)
            EmojiView(symbol: "👕", size: 100, x: 0, y: -50)
            EmojiView(symbol: "👋", size: 35, x: -60, y: -60)
            EmojiView(symbol: "👍", size: 35, x: 60,  y: -60)
            EmojiView(symbol: "👟", size: 60, x: -45, y: 80)
            EmojiView(symbol: "👟", size: 60, x: 45,  y: 80)
        }
        .frame(width: 200, height: 320)
    }
}


#Preview {
    ContentView()
}
