//
//  QuickActionHandler.swift
//  HomeScreenQuickAction
//
//  Created by Appnap WS05 on 1/31/24.
//

import SwiftUI

enum Actions: String{
    case option1
    case option2
    case option3
    
    var text: String{
        switch self {
        case .option1:
            return "Option 1 is selected"
        case .option2:
            return "Option 2 is selected"
        case .option3:
            return "Option 3 is selected"
        }
    }
    
    var color: Color{
        switch self {
        case .option1:
            return Color.red
        case .option2:
            return Color.green
        case .option3:
            return Color.blue
        }
    }
}

class QuickActionHandler: ObservableObject{
    static let shared = QuickActionHandler()
    
    @Published var selectedOption: Actions? = nil
}

