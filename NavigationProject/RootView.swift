//
//  ContentView.swift
//  NavigationProject
//
//  Created by admin-pp on 07.06.22.
//

import SwiftUI
import NavigationStack

struct RootView: View {
    var body: some View {
        NavigationStackView(transitionType: .custom(.slide), easing: .easeInOut) {
            HomeView()
        }
    }
}
