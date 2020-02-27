//
//  Shape.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

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
