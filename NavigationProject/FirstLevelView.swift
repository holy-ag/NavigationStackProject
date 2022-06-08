//
//  FirstView.swift
//  NavigationStack
//
//  Created by admin-pp on 07.06.22.
//

import SwiftUI
import NavigationStack

struct FirstLevelView: View {
    var body: some View {
        VStack {
            PopView {
                Text("Pop to home view")
            }
            Spacer()
            Text("1")
                .font(.largeTitle)
            Spacer()
            PushView(destination: SecondLevelView(), destinationId: ViewDestinations.secondLevelView.rawValue) {
                Text("Push next")
            }
        }
    }
}
