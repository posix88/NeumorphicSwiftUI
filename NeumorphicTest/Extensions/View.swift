//
//  View.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

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

