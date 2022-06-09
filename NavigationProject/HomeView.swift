//
//  HomeView.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

struct HomeView: View {
    
    let model: HomeViewModel
    let title: String?
    @EnvironmentObject private var navigationStack: NavigationStack
    
    var body: some View {
        VStack {
            Spacer()
            Text(title ?? "Home View")
                .font(.largeTitle)
            Spacer()
            PushView(destination: FirstLevelView(), destinationId: ViewDestinations.firstLevelView.rawValue) {
                Text("Push first View")
            }
            Button("Go to 4") {
                model.goToFourthView()
            }
        }
        .onAppear() {
            model.navigationStack = navigationStack
        }
        .padding(.vertical, 16)
    }
        
}

enum ViewDestinations: String {
    case firstLevelView = "firstLevelView"
    case secondLevelView = "secondLevelView"
    case thirdLevelView = "thirdLevelView"
    case fourthLevelView = "modalView"
}
