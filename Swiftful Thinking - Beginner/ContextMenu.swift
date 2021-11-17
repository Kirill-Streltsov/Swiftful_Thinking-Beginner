//
//  ContextMenu.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.blue)
        .cornerRadius(30)
        .contextMenu {
            Text("Menu Item 1")
            Text("Menu Item 2")
            Text("Menu Item 3")
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
