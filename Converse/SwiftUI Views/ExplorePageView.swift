//
//  ExplorePageView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

struct ExplorePageView: View {
    @State private var selection = 0

    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("Explore")
                    .largeTitle()
                Spacer()
                
                Image("filter")
            }
            
            SegmentControlView(options: ["Live Now", "Upcoming"],
                               selection: $selection)
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ForEach(0 ..< 15) { _ in
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
        .padding([.horizontal,.top])
        .foregroundColor(.white)
        .background(Color.backgroundBlue.ignoresSafeArea())
    }
}


struct ExplorePageView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePageView()
    }
}
