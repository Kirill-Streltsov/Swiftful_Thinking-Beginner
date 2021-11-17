//
//  Toggles.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct Toggles: View {
    
    @State var toggleIsOn = false
    
    var body: some View {
        VStack {
            
            Toggle(isOn: $toggleIsOn) {
                Text(toggleIsOn ? "Toggle is on" : "Toggle is off")
            }
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Toggles()
    }
}
