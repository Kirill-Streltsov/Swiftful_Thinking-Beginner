//
//  AppStorageBootcamp.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 27.11.2021.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "No Name")
            Button("SAVE") {
                currentUserName = "Kirill"
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
