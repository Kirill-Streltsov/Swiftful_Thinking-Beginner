//
//  Stacks.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 12.11.2021.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.orange)
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                Circle()
                    .fill(Color.indigo)
                    .frame(width: 150, height: 150)
            }
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 125, height: 125)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    
                }
            }
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
