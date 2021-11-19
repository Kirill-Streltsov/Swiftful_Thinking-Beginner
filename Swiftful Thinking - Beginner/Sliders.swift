//
//  Sliders.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 19.11.2021.
//

import SwiftUI

struct Sliders: View {
    
    @State var sliderValue: Double = 3
    @State var color = Color.red
    
    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.2f", sliderValue)
            )
                .foregroundColor(color)
            Slider(value: $sliderValue, in: 1...5)
                .tint(.red)
            Slider(value: $sliderValue, in: 1...5, step: 1.0)
                .tint(.red)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0) {
                    Text("Title")
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("5")
                } onEditingChanged: { (_) in
                    color = .green
                }

        }
    }
}

struct Sliders_Previews: PreviewProvider {
    static var previews: some View {
        Sliders()
    }
}
