//
//  HomeViewModel.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 09.06.22.
//

import Foundation
import NavigationStack

class HomeViewModel {
    var navigationStack: NavigationStack?
    
    func goToFourthView() {
        self.navigationStack?.push(FirstLevelView(), withId: ViewDestinations.firstLevelView.rawValue)
        self.navigationStack?.push(SecondLevelView(), withId: ViewDestinations.secondLevelView.rawValue)
        self.navigationStack?.push(ThirdLevelView(), withId: ViewDestinations.thirdLevelView.rawValue)
        self.navigationStack?.push(FourthLevelView(isModalChildOpen: true), withId: ViewDestinations.fourthLevelView.rawValue)
    }
}
