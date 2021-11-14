//
//  SafeAreas.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct SafeAreas: View {
    var body: some View {
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(Color.red)
        
        //        ZStack {
        //            // background
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //
        //            // foreground
        //            VStack {
        //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //        }
    }
}

struct SafeAreas_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreas()
    }
}
