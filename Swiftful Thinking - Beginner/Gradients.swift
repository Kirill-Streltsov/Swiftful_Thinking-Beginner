//
//  Gradients.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 08.11.2021.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        VStack(spacing: 32) {
            VStack {
                Text("Linear Gradient (Subtle)")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            colors: [Color(#colorLiteral(red: 0.2408812046, green: 0.6738553047, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.488997221, blue: 0.8384560347, alpha: 1))],
                            startPoint: .top,
                            endPoint: .bottom)
                    )
                    .frame(width: 200, height: 120)
            }
            VStack {
                Text("Radial Gradient")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            center: .topLeading,
                            startRadius: 5,
                            endRadius: 400)
                    )
                    .frame(width: 200, height: 120)
            }
            
            VStack {
                Text("Angular Gradient")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            center: .topLeading,
                            angle: .degrees(225))
                    )
                    .frame(width: 200, height: 120)
            }
        }
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
