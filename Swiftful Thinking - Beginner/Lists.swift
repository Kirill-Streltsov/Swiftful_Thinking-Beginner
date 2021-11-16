//
//  Lists.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 16.11.2021.
//

import SwiftUI

struct Lists: View {
    
    @State var fruits = [
        "apple",
        "orange",
        "banana",
        "peach"
    ]
    
    @State var veggies = [
        "tomato",
        "potato",
        "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    Text("Fruits")
                        .foregroundColor(.purple)
                }
                Section {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
                
            }
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarLeading) {
                        EditButton()
                    }
                ToolbarItem(
                    placement: .navigationBarTrailing) {
                        addButton
                    }
            }
        }
        .tint(.red)
        
    }
    
    var addButton: some View {
        Button("Add") {
            fruits.append("Coconut")
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from previousOffset: IndexSet, to newOffset: Int) {
        fruits.move(fromOffsets: previousOffset, toOffset: newOffset)
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
