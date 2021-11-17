//
//  Pickers.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct Pickers: View {
    
    @State var selection = "1"
    
    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            Picker(
                selection: $selection,
                content: {
                    ForEach(1..<3) { number in
                        Text("\(number)").tag(number)
                    }

                }) {
                    Text("Picker")
                }
                .pickerStyle(.segmented)
        }
    }
}

struct Pickers_Previews: PreviewProvider {
    static var previews: some View {
        Pickers()
    }
}
