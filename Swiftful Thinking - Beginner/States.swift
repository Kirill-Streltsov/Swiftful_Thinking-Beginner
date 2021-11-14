//
//  States.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct States: View {
    
    @State var backgroundColor: Color = .green
    @State var title = "My Title"
    @State var pressCount = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("\(pressCount)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        title = "Button 1 was pressed"
                        pressCount += 1
                    }
                    Button("Button 2") {
                        backgroundColor = .green
                        title = "Button 2 was pressed"
                        pressCount -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}
