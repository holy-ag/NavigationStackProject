//
//  ModalView.swift
//  NavigationStack
//
//  Created by admin-pp on 08.06.22.
//

import SwiftUI
import NavigationStack

struct FourthLevelView: View {
    @State var isModalChildOpen = false
    var body: some View {
        ZStack {
            VStack {
                PopView {
                    Text("Pop previous")
                }
                Spacer()
                Text("4")
                    .font(.largeTitle)
                Spacer()
                Button("Open modal child", action: openModalChild)
            }
            if isModalChildOpen { // Manage this specific transition yourself
                ModalChild(iAmOpen: $isModalChildOpen)
                    .transition(.slide)
                    .transition(.move(edge: .bottom))
                    .animation(.easeOut, value: true)
                    .zIndex(1) // This might seem unnecessary, but it's needed in order for the transition to occur properly in a ZStack
            }
        }
    }

    private func openModalChild() {
        isModalChildOpen = true
    }
}

struct ModalChild: View {
    @Binding var iAmOpen: Bool

    var body: some View {
        ZStack {
            Color.yellow
            VStack {
                Spacer()
                Text("MODAL CHILD")
                Spacer()
                Button("CLOSE", action: closeModalChild)
            }
        }
    }

    private func closeModalChild() {
        iAmOpen = false
    }
}
