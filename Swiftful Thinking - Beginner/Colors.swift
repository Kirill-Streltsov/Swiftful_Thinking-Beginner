//
//  Colors.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 08.11.2021.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        VStack(spacing: 4) {
            VStack {
                Text("Purple")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.purple)
                    .frame(width: 200, height: 120)
            }
            
            VStack {
                Text("Primary")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.primary)
                    .frame(width: 200, height: 120)
            }
            
            VStack {
                Text("Red")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                .frame(width: 200, height: 120)
            }
            
            VStack {
                Text("UIColor.secondarySystemBackground")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        Color(uiColor: UIColor.secondarySystemBackground)
                    )
                .frame(width: 200, height: 120)
            }
            
            VStack {
                Text("Custom Color (with shadow)")
                    .font(.system(size: 24))
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        Color("CustomColor")
                    )
                .frame(width: 200, height: 120)
                .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 10, y: 20)
            }
        }
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
