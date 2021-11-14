//
//  Initializers.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct Initializers: View {
    
    let backgroundColor: Color = .red
    
    var body: some View {
        VStack(spacing: 12) {
            Text("5")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("Apples")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct Initializers_Previews: PreviewProvider {
    static var previews: some View {
        Initializers()
    }
}
