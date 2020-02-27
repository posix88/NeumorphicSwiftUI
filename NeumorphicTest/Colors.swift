//
//  Colors.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
    static let lightStart = Color(red: 60 / 255, green: 160 / 255, blue: 240 / 255)
    static let lightEnd = Color(red: 30 / 255, green: 80 / 255, blue: 120 / 255)
}

extension View {
    func neumorphed(darkerColor: Color, lighterColor: Color) -> some View {
        self.shadow(color: darkerColor.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: lighterColor.opacity(0.7), radius: 10, x: -5, y: -5)
    }
    
    func neumorphedFlipped(lighterColor: Color, darkerColor: Color) -> some View {
        self.shadow(color: lighterColor.opacity(0.7), radius: 10, x: 10, y: 10)
            .shadow(color: darkerColor.opacity(0.2), radius: 10, x: -5, y: -5)
    }
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}


extension Shape {
    func coloredActiveDarkShape() -> some View {
        self.fill(LinearGradient(Color.lightEnd, Color.lightStart))
            .overlay(self.stroke(LinearGradient(Color.lightStart, Color.lightEnd), lineWidth: 4))
        .shadow(color: Color.darkStart, radius: 10, x: 5, y: 5)
        .shadow(color: Color.darkEnd, radius: 10, x: -5, y: -5)
    }
    
    func coloredUnactiveDarkShape() -> some View {
        self.fill(LinearGradient(Color.darkStart, Color.darkEnd))
        .overlay(self.stroke(LinearGradient(Color.lightStart, Color.lightEnd), lineWidth: 4))
        .neumorphed(darkerColor: .darkStart, lighterColor: .darkEnd)
    }
    
    func activeDarkShape() -> some View {
        self.fill(LinearGradient(Color.darkEnd, Color.darkStart))
        .overlay(self.stroke(LinearGradient(Color.darkStart, Color.darkEnd), lineWidth: 4))
    }
    
    func unactiveDarkShape() -> some View {
        self.fill(LinearGradient(Color.darkStart, Color.darkEnd))
        .neumorphed(darkerColor: .darkStart, lighterColor: .darkEnd)
    }

}
