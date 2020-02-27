//
//  NeuToggle.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

struct NeuToggle: View {
    var colored: Bool = false
    
    @State private var isToggled = false
    
    var body: some View {
        ZStack {
            LinearGradient(Color.darkStart, Color.darkEnd)
            Toggle(isOn: $isToggled) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.white)
            }
            .toggleStyle(DarkToggleStyle(colored: colored))
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NeuToggle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NeuToggle()
            NeuToggle(colored: true)
        }
    }
}
