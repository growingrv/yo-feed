//
//  BaseView.swift
//  YoFeed
//
//  Created by Gaurav Tiwari on 2024-01-11.
//

import SwiftUI

struct BaseView: View {
    @AppStorage("onboarded") var isOnboarded: Bool = false

    var body: some View {
        if isOnboarded {
            onboardedView()
        } else {
            IntroductionView(isOnboarded: $isOnboarded)
        }
    }

    @ViewBuilder
    func onboardedView() -> some View {
        TabView {
            HomeView(isOnboarded: false)
                .tabItem({
                    Label("Home", systemImage: "house")
                })
            SettingsView()
                .tabItem({
                    Label("Settings", systemImage: "gear")
                })
        }
    }
}

#Preview {
    BaseView()
}
