//
//  ContentView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            CreateRoomView()
                .tabItem {
                    Label("Create Room", systemImage: "house")
                }
            
            ExplorePageView()
                .tabItem {
                    Label("Explore Room", systemImage: "book")
                }

            SchedulePageView()
                .tabItem {
                    Label("Schedule Room", systemImage: "alarm")
                }
            
            ProfilePageview()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
