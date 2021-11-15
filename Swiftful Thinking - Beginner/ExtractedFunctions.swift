//
//  ExtractedFunctions.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 15.11.2021.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text("Title")
                    .font(.largeTitle)
                Button {
                    buttonPressed()
                } label: {
                    ButtonLabel()
                }

            }
        }
    }
        
    func buttonPressed() {
        if backgroundColor == .yellow {
            backgroundColor = .pink
        } else {
            backgroundColor = .yellow
        }
    }
}

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
    }
}

struct ButtonLabel: View {
    var body: some View {
        Text("Press me!")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
    }
}
