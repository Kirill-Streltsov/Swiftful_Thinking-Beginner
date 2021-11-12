//
//  BackgroundsAndOverlays.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 12.11.2021.
//

import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
        VStack(spacing: 40) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
                    Color.red
                )
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
                    LinearGradient(
                        gradient:
                            Gradient(colors: [Color.red, Color.orange]),
                        startPoint: .leading,
                        endPoint: .trailing)
                )
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100, alignment: .center)
                .background(
                    Circle()
                        .fill(Color.blue)
                )
                .frame(width: 120, height: 120, alignment: .center)
                .background(
                    Circle()
                        .fill(Color.red)
                )
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 110, height: 110, alignment: .center)
                )
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50),
                    alignment: .center
                )
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.white, Color.indigo]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(
                            color: .indigo.opacity(0.5),
                            radius: 10,
                            x: 0.0,
                            y: 10
                        )
                        .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                            , alignment: .bottomTrailing
                        )
                )
        }
    }
}

struct BackgroundsAndOverlays_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsAndOverlays()
    }
}
