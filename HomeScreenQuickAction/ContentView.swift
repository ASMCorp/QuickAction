//
//  ContentView.swift
//  HomeScreenQuickAction
//
//  Created by Appnap WS05 on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var quickActionOptions: QuickActionHandler
    
    var body: some View {
        ZStack {
            quickActionOptions.selectedOption?.color ?? Color.white
            Text(quickActionOptions.selectedOption?.text ?? "No option is selected")
                .bold(quickActionOptions.selectedOption != nil)
                .strikethrough(quickActionOptions.selectedOption == nil)
        }
        .padding()
    }
}

