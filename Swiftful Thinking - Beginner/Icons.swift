//
//  Icons.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 12.11.2021.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.caption)
            Image(systemName: "books.vertical")
                .font(.system(size: 200))
            Image(systemName: "person.badge.plus")
                .scaledToFit()
                .font(.system(size: 100))
                .foregroundColor(.red)
            Image(systemName: "paperplane.fill")
                .resizable()
                .scaledToFit()
                .font(.system(size: 100))
                .foregroundColor(.green)
                .frame(width: 200, height: 200, alignment: .center)
        }
        
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
