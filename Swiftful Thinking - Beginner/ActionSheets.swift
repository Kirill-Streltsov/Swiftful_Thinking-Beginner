//
//  ActionSheets.swift
//  Swiftful Thinking - Beginner
//
//  Created by Кирилл Стрельцов on 17.11.2021.
//

import SwiftUI

struct ActionSheets: View {
    
    @State var showActionSheet = false
    @State var actionSheetOption = ActionSheetOptions.isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)

                
            }
            .padding()
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }.actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let shareButton = ActionSheet.Button.default(Text("Share")) {
            
        }
        let reportButton = ActionSheet.Button.destructive(Text("Report")) {
            
        }
        let deleteButton = ActionSheet.Button.destructive(Text("Delete")) {
            
        }
        let cancelButton = ActionSheet.Button.cancel()
        
        let title = Text("What would you like to do?")
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }

    }
}

struct ActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheets()
    }
}
