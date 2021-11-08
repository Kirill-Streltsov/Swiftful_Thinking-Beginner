//
//  Shapes.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 08.11.2021.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack(spacing: 32) {
            RoundedRectangle(cornerRadius: 50)
                .trim(from: 0.4, to: 1)
                .frame(width: 200, height: 100)
                .foregroundColor(.red)
            Capsule(style: .circular)
                .frame(width: 200, height: 100)
                .foregroundColor(.yellow)
            Ellipse()
                .frame(width: 200, height: 100)
                .foregroundColor(.green)
            Circle()
                .trim(from: 0.2, to: 1)
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [ 30]))
                .frame(width: 200, height: 100)
        }

    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
