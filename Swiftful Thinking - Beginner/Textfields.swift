//
//  Textfields.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct Textfields: View {
     
    @State var textFieldText = ""
    @State var dataArray: [String] = [
        
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type your text...", text: $textFieldText)
                    .padding()
                    .background(
                        Color.gray
                            .opacity(0.3)
                            .cornerRadius(10)
                    )
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { text in
                    Text(text)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct Textfields_Previews: PreviewProvider {
    static var previews: some View {
        Textfields()
    }
}
