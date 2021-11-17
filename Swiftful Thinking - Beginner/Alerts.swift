//
//  Alerts.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct Alerts: View {
    
    @State var showAlert = false
    @State var backgroundColor = Color.yellow
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("Title"),
            message: Text("Here we will describe the error"),
            primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red
            }),
            secondaryButton: .cancel()
        )
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
