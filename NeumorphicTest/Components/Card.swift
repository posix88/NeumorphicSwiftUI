//
//  ContentView.swift
//  NeumorphicTest
//
//  Created by MUSOLINO Antonino on 27/02/2020.
//  Copyright © 2020 Antonino Francesco Musolino. All rights reserved.
//

import SwiftUI

struct Card: View {
    
    @State var cardWidth: CGFloat = 100
    @State var cardHeight: CGFloat = 100
    
    var body: some View {
        ZStack {
            Color.offWhite
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.offWhite)
                .frame(width: cardWidth, height: cardHeight)
                .neumorphed(darkerColor: Color.black, lighterColor: Color.white)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardWidth: 200, cardHeight: 200)
    }
}
