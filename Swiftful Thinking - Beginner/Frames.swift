//
//  Frames.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 12.11.2021.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        VStack {
            Text("First Frame")
                .background(Color.green)
                .frame(width: 100, height: 100, alignment: .center)
                .background(Color.red)
            Text("Second Frame")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.green)
        }
     }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
