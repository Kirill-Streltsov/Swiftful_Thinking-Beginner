//
//  Steppers.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 18.11.2021.
//

import SwiftUI

struct Steppers: View {
    
    @State var stepperValue = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper {
                Text("Stepper 2")
            } onIncrement: {
                incrementWidth(amount: 100)
            } onDecrement: {
                incrementWidth(amount: -100)
            }
        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Steppers()
    }
}
