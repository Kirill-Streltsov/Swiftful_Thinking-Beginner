//
//  TextEditors.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct TextEditors: View {
    
    @State var textEditorText = "This is the starting text"
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                Button {
                    
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct TextEditors_Previews: PreviewProvider {
    static var previews: some View {
        TextEditors()
    }
}
