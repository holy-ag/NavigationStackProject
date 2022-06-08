//
//  NavigationProjectApp.swift
//  NavigationProject
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

@main
struct NavigationProjectApp: App {
    
    @State var selectedTab = 1
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                RootView(title: "HomeView One")
                    .tabItem {
                        VStack {
                            Image(systemName: "1.circle.fill")
                            Text("1st tab")
                        }
                    }.tag(0)
                
                RootView(title: "HomeView Two")
                    .tabItem {
                        VStack {
                            Image(systemName: "2.circle.fill")
                            Text("2d tab")
                        }
                    }.tag(1)
            }
            .onAppear() {
                UITabBar.appearance().backgroundColor = .darkGray
                UITabBar.appearance().unselectedItemTintColor = .lightGray
            }
        }
    }
}
