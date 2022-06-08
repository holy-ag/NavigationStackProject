//
//  thirdLevelView.swift
//  NavigationStack
//
//  Created by Pascal Peuch on 07.06.22.
//

import SwiftUI
import NavigationStack

struct ThirdLevelView: View {
    
    var body: some View {
        VStack {
            PopView {
                Text("Pop previous")
            }
            Spacer()
            Text("3")
                .font(.largeTitle)
            Spacer()
            PopView(destination: .root) {
                Text("Pop to root")
            }
            PushView(destination: FourthLevelView(), destinationId: ViewDestinations.fourthLevelView.rawValue) {
                Text("Push next")
            }
            
        }
    }
}
