//
//  Bindings.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 15.11.2021.
//

import SwiftUI

struct Bindings: View {
    
    @State var backgroundColor: Color = .green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button {
            title = "Button was pressed"
            backgroundColor = .orange
            buttonColor = .pink
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct Bindings_Previews: PreviewProvider {
    static var previews: some View {
        Bindings()
    }
}
