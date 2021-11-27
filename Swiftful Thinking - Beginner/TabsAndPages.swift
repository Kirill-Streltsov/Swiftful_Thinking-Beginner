//
//  TabsAndPages.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 20.11.2021.
//

import SwiftUI

struct TabsAndPages: View {
    
    @State var selectedTab = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home Tab")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        
    }
}

struct TabsAndPages_Previews: PreviewProvider {
    static var previews: some View {
        TabsAndPages()
    }
}
