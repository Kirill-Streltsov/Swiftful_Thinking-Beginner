//
//  ColorPickers.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct ColorPickers: View {
    @State var backgroundColor = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            HStack {
                ColorPicker("Select a Color", selection: $backgroundColor)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(50)
            }
            
        }
        
    }
}

struct ColorPickers_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickers()
    }
}
