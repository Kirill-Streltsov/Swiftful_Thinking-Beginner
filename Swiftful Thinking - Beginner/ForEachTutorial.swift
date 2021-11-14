//
//  ForEach.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 14.11.2021.
//

import SwiftUI

struct ForEachTutorial: View {
    
    let data = ["First String", "Next String", "Last String"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text(data[index])
                }
                
            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEachTutorial()
    }
}
