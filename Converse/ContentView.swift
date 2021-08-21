//
//  ContentView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("selectedTab")
    private var selectedTab: Int = 1
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                
                CreateRoomView()
                    .tabItem {
                        Label("Create Room", systemImage: "house")
                    }.tag(0)
                
                ExplorePageView()
                    .tabItem {
                        Label("Explore Room", systemImage: "book")
                    }.tag(1)

                SchedulePageView()
                    .tabItem {
                        Label("Schedule Room", systemImage: "alarm")
                    }.tag(2)
                
                ProfilePageview()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }.tag(3)
            }
            
            VStack(spacing: 0) {
                Spacer()
                TabBarView(selection: $selectedTab)
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
