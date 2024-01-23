//
//  IntroductionView.swift
//  YoFeed
//
//  Created by Gaurav Tiwari on 2024-01-11.
//

import SwiftUI

struct IntroductionView: View {
    @State var shouldProceed = false
    @Binding var isOnboarded: Bool

    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to the app")
                Spacer()
                Button(action: {
                    shouldProceed = true
                    isOnboarded.toggle()
                }, label: {
                    Label("Proceed", systemImage: "line.diagonal.arrow")
                })
            }
            .navigationDestination(isPresented: $shouldProceed, destination: {
                HomeView(isOnboarded: isOnboarded)
            })
        }
    }
}

//#Preview {
//    IntroductionView(isOnboarded: false)
//}
