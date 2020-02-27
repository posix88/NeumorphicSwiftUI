//
//  BackgroundShape.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

struct DarkBackground<S: Shape>: View {
    var colored: Bool = false
    var isHighlighted: Bool
    var shape: S

    var body: some View {
        ZStack {
            if isHighlighted {
                if colored {
                    shape.coloredActiveDarkShape()
                } else {
                    shape.activeDarkShape()
                }

            } else {
                if colored {
                    shape.coloredUnactiveDarkShape()
                } else {
                    shape.unactiveDarkShape()
                }
            }
        }
    }
}

struct DarkBackground_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkBackground(isHighlighted: false, shape: Circle())
            DarkBackground(isHighlighted: true, shape: Circle())
            DarkBackground(colored: true, isHighlighted: false, shape: Circle())
            DarkBackground(colored: true, isHighlighted: true, shape: Circle())
        }.background(LinearGradient(Color.darkStart, Color.darkEnd)).edgesIgnoringSafeArea(.all)
        
    }
}
