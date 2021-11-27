//
//  OnAppearOnDisappear.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 27.11.2021.
//

import SwiftUI

struct OnAppearOnDisappear: View {
    
    @State var myText = "Start text."
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                myText = "End text."
            })
            .navigationTitle("OnAppear Bootcamp")
        }
    }
}

struct OnAppearOnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearOnDisappear()
    }
}
