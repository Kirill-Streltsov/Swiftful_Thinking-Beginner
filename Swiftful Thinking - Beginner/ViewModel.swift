//
//  ViewModel.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 27.11.2021.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    
    init() {
        getFruits()
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Bananas", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 1)
        fruitArray.append(contentsOf: [fruit1, fruit2, fruit3])
    }
    
}

struct ViewModel: View {
    
    //    @StateObject -> USE THIS ON CREATION / INIT
    //    @ObservedObject -> USE THIS ON SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text(fruit.name)
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                }
                .onDelete(perform: fruitViewModel.deleteFruit)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        AnotherScreen(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                }
            })
        }
    }
}

struct AnotherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go Back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            
        }
    }
}

struct PropertyWrappers_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}
