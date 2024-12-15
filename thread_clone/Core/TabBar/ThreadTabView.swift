//
//  ThreadTabView.swift
//  ThreadApp
//
//  Created by KarmL on 12/12/2024.
//
       

import SwiftUI

struct ThreadTabView: View {
    @State private var SelectedTab=0
    
    var body: some View {
        TabView(selection: $SelectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: SelectedTab == 0 ? "house.fill":"house")
                        .environment(\.symbolVariants,SelectedTab == 0 ? .fill:.none)
                }.onAppear{SelectedTab = 0}
                .tag(0)
            ExploreView()
                .tabItem{
                    Image(systemName:"magnifyingglass")
                }.onAppear{SelectedTab = 1}
                .tag(1)
            CreateThreadView()
                .tabItem{
                    Image(systemName:"plus")
                }.onAppear{SelectedTab = 2}
                .tag(2)
            ActivityView()
                .tabItem{
                    Image(systemName: SelectedTab == 3 ? "heart.fill":"heart")
                        .environment(\.symbolVariants,SelectedTab == 3 ? .fill:.none)
                }.onAppear{SelectedTab=3}
                .tag(3)
            ProfilView()
                .tabItem{
                    Image(systemName: SelectedTab == 4 ? "person.fill":"person")
                        .environment(\.symbolVariants,SelectedTab == 4 ? .fill:.none)
                }.onAppear{SelectedTab = 4 }
                .tag(4)
            
            
        }.tint(.black)
    }
}

#Preview {
    ThreadTabView()
}
