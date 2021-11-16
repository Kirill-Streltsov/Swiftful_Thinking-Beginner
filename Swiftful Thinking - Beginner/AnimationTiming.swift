//
//  AnimationTiming.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 16.11.2021.
//

import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating = false
    let timing = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.linear, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut, value: isAnimating)
        }
    }
}

struct AnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming()
    }
}
