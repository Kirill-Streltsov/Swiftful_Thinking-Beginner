//
//  Grids.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct Grids: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .padding()
                    }
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .padding()
                    }
            }
        }
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
