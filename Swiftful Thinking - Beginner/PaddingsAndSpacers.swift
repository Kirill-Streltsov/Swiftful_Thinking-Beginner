//
//  PaddingsAndSpacers.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 12.11.2021.
//

import SwiftUI

struct PaddingsAndSpacers: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .padding(.all, 10)
                .padding(.leading, 20)
                .background(Color.blue)
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            Text("This an example of a multiline text. How can we make it pretty? Well, this is a great question. Just look at the code!")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingsAndSpacers_Previews: PreviewProvider {
    static var previews: some View {
        PaddingsAndSpacers()
    }
}
