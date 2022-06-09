//
//  ContentView.swift
//  NavigationProject
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

struct RootView: View {
    
    let title: String?
    
    var body: some View {
        NavigationStackView(transitionType: .custom(.slide), easing: .easeInOut) {
            HomeView(model: HomeViewModel(), title: title)
        }
    }
}
