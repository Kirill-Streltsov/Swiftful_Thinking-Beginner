//
//  Buttons.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct Buttons: View {
    
    @State var title = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button #1 was pressed"
            }
            .tint(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    )
            }
            Button {
                self.title = "Button #3 was pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }


            
        }
        
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
