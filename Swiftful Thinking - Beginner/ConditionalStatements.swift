//
//  ConditionalStatements.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 16.11.2021.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var showCircle = false
    @State var showRectangle = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }

            HStack {
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                }
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                }
                if !showCircle && !showRectangle {
                    Text("NO SHAPES DISPLAYED")
                        .fontWeight(.bold)
                }
            }
            
            
        }
    }
}

struct ConditionalStatements_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatements()
    }
}
