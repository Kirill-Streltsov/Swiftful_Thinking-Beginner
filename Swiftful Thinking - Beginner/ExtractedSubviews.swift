//
//  ExtractedSubviews.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 15.11.2021.
//

import SwiftUI

struct ExtractedSubviews: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack {
            MyItem(title: "Oranges", count: 5, color: .blue)
            MyItem(title: "Apples", count: 3, color: .blue)
            MyItem(title: "Limes", count: 2, color: .blue)
        }
    }
}

struct ExtractedSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubviews()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
