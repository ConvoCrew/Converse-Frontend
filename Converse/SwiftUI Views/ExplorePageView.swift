//
//  ExplorePageView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

struct ExplorePageView: View {
    @State private var selection = 0
    
    @State private var showFilterView = false

    var body: some View {
        ZStack {
            VStack(spacing: 15) {
                HStack {
                    Text("Explore")
                        .largeTitle()
                    Spacer()
                    
                    Button(action: {
                        withAnimation(.spring()) {
                            showFilterView.toggle()
                        }
                    }, label: {
                        Image("filter")
                    })
                }
                
                SegmentControlView(options: ["Live Now", "Upcoming"],
                                   selection: $selection)
                
                ScrollView(.vertical, showsIndicators: true) {
                    VStack {
                        ForEach(0 ..< 8) { _ in
                            if selection == 0 {
                                DiscussionRowView(discussion: .liveExample)
                            } else {
                                DiscussionRowView(discussion: .upComingExample)
                                
                            }
                            Color.white.frame(height: 1)
                        }
                    }
                    .padding(.horizontal, 6)
                }
            }
            .blur(radius: showFilterView ? 3 : 0)
            .padding([.horizontal,.top])
            .foregroundColor(.white)
            .background(Color.backgroundBlue.ignoresSafeArea())
            
//            if showFilterView {
            FilterByCategoryView(isPresented: $showFilterView)
                    .offset(y: showFilterView ? 0 : 1000)                    .animation(.spring())

//            }
        }
    }
}


struct ExplorePageView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePageView()
    }
}
