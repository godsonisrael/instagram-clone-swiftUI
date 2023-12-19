//
//  MainTabView.swift
//  instagram-clone
//
//  Created by Godson on 14/12/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView().tabItem { Image(systemName: "house") }
            SearchView().tabItem { Image(systemName: "magnifyingglass") }
            Text("Upload post").tabItem { Image(systemName: "plus.square") }
            Text("Notifications").tabItem { Image(systemName: "heart") }
            ProfileView().tabItem { Image(systemName: "person") }
        }.accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
