//
//  Images.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 12.11.2021.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack {
            Image("dog")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle())
            Image("cat")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle())
        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
