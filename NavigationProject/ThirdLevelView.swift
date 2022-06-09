//
//  thirdLevelView.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

struct ThirdLevelView: View {
    
    @ObservedObject var viewModel: ThirdLevelViewModel
    
    var body: some View {
        view(for: viewModel.changeColor)
    }
    
    @ViewBuilder func view(for state: Bool) -> some View {
        ZStack {
            if state { Color.green }
            VStack {
                PopView {
                    Text("Pop previous")
                }
                Spacer()
                Text("3")
                    .font(.largeTitle)
                Spacer()
                Button("Change color") { viewModel.changeColor = !state }
                PopView(destination: .root) {
                    Text("Pop to root")
                }
                PushView(destination: FourthLevelView(), destinationId: ViewDestinations.fourthLevelView.rawValue) {
                    Text("Push next")
                }
            }
            .padding(.vertical, 16)
        }
    }
}
