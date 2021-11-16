//
//  Animations.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 16.11.2021.
//

import SwiftUI

struct Animations: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatForever()
                ) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 300 : 150,
                    height: isAnimated ? 300: 150)
                .rotationEffect(Angle(degrees: isAnimated ? 1080 : 0))
                .offset(y: isAnimated ? 100 : 0)
            Spacer()
        }
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
