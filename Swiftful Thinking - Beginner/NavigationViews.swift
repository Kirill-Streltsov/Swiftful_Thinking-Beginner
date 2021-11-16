//
//  NavigationViews.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 16.11.2021.
//

import SwiftUI

struct NavigationViews: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                        Text("YOU PRESSED ON PERSON")
                    } label: {
                        Image(systemName: "person.fill")
                    }

                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Text("YOU PRESSED ON GEAR")
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
        }
    }
}

struct MyOtherScreen: View {
        
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
            VStack {
                NavigationLink("Click here!") {
                    Text("Third Screen")
                }
            }
        }
    }
}

struct NavigationViews_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViews()
    }
}
