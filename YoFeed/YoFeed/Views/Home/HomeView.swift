//
//  HomeView.swift
//  YoFeed
//
//  Created by Gaurav Tiwari on 2024-01-11.
//

import SwiftUI

struct HomeView: View {
    @State var isOnboarded: Bool
    
    var body: some View {
        Label("Home", systemImage: "house")
    }
}

#Preview {
    HomeView(isOnboarded: false)
}
