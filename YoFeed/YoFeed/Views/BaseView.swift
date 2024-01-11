//
//  BaseView.swift
//  YoFeed
//
//  Created by Gaurav Tiwari on 2024-01-11.
//

import SwiftUI

struct BaseView: View {
    @AppStorage("onboarded") var onboarded: Bool = false

    var body: some View {
        if onboarded {
            onboardedView()
        } else {
            IntroductionView()
        }
    }

    @ViewBuilder
    func onboardedView() -> some View {
        HomeView()
    }
}

#Preview {
    BaseView()
}
