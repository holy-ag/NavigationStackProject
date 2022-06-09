//
//  ModalView.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 08.06.22.
//

import SwiftUI
import NavigationStack

struct FourthLevelView: View {
    @State var isModalChildOpen = false
    
    var body: some View {
        view(for: isModalChildOpen)
    }
    
    @ViewBuilder func view(for state: Bool) -> some View {
        ZStack {
            if state {
                ModalChild(iAmOpen: $isModalChildOpen)
            } else {
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
            }
        }
        .padding(.vertical, 16)
    }

    private func openModalChild() {
        withAnimation(.linear) {
            isModalChildOpen = true
        }
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
        .transition(.move(edge: .bottom))
    }

    private func closeModalChild() {
        iAmOpen = false
    }
}
