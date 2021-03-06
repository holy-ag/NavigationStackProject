//
//  SecondLevelView.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

struct SecondLevelView: View {
    var body: some View {
        VStack {
            PopView {
                Text("Pop previous")
            }
            Spacer()
            Text("2")
                .font(.largeTitle)
            Spacer()
            PushView(destination: ThirdLevelView(viewModel: ThirdLevelViewModel()), destinationId: ViewDestinations.thirdLevelView.rawValue) {
                Text("Push next")
            }
            PopView(destination: .root) {
                Text("Pop to root")
            }
        }
        .padding(.vertical, 16)
    }
}
