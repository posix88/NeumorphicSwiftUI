//
//  NeuButton.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

struct NeuButton: View {
    
    var colored: Bool = false
    var action: (() -> Void)
    
    var body: some View {
        ZStack {
            LinearGradient(Color.darkStart, Color.darkEnd)
            Button(action: {
                self.action()
            }) {
                Image(systemName: "heart.fill").foregroundColor(.white)
            }.buttonStyle(DarkNeumorphicStyle(colored: colored))
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NeuButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NeuButton(action: { print("Button") })
            NeuButton(colored: true, action: { print("Button") })
        }
        
    }
}
