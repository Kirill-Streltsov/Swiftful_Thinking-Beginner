//
//  DatePickers.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct DatePickers: View {
    
    @State var currentDate = Date()
    
    var body: some View {
        DatePicker("Date Picker", selection: $currentDate, displayedComponents: [.date])
            .padding()
            .cornerRadius(30)
            .padding()
    }
}

struct DatePickers_Previews: PreviewProvider {
    static var previews: some View {
        DatePickers()
    }
}
