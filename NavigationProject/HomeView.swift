//
//  HomeView.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

struct HomeView: View {
    
    @EnvironmentObject private var navigationStack: NavigationStack
    
    var body: some View {
        VStack {
            Spacer()
            Text("Home View")
                .font(.largeTitle)
            Spacer()
            PushView(destination: FirstLevelView(), destinationId: ViewDestinations.firstLevelView.rawValue) {
                Text("Push first View")
            }
            Button("Go to 4") {
                self.navigationStack.push(FirstLevelView(), withId: ViewDestinations.firstLevelView.rawValue)
                self.navigationStack.push(SecondLevelView(), withId: ViewDestinations.secondLevelView.rawValue)
                self.navigationStack.push(ThirdLevelView(), withId: ViewDestinations.thirdLevelView.rawValue)
                self.navigationStack.push(FourthLevelView(isModalChildOpen: true), withId: ViewDestinations.fourthLevelView.rawValue)
            }
        }
    }
}

enum ViewDestinations: String {
    case firstLevelView = "firstLevelView"
    case secondLevelView = "secondLevelView"
    case thirdLevelView = "thirdLevelView"
    case fourthLevelView = "modalView"
}
