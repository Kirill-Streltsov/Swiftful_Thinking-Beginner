//
//  ScrollViewTutorial.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct ScrollViewTutorial: View {
    var body: some View {
        ScrollView {
            HStack {
                CatImage()
                CatImage()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<20) { index in
                        Image("dog")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                }
            }
            .padding()
            HStack {
                CatImage()
                CatImage()
            }
            HStack {
                CatImage()
                CatImage()
            }
        }
        
    }
}

struct ScrollViewTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTutorial()
    }
}

struct CatImage: View {
    var body: some View {
        Image("cat")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 250)
    }
}
