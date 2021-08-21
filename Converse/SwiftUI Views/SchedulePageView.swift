//
//  SchedulePageView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

struct SchedulePageView: View {
    @State private var selection = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Schedules")
                .largeTitle()
            
            SegmentControlView(options: ["Hosting", "Attending"], selection: $selection)
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ForEach(0 ..< 3) { _ in
                        if selection == 0 {
                            DiscussionRowView(discussion: .hostingExample)
                        } else {
                            DiscussionRowView(discussion: .attentingExample)
                            
                        }
                        Color.white.frame(height: 1)
                    }
                }
                .padding(.horizontal, 6)
            }
        }
        .padding([.horizontal])
        .foregroundColor(.white)
        .background(Color.backgroundBlue.ignoresSafeArea())
    }
}

struct SchedulePageView_Previews: PreviewProvider {
    static var previews: some View {
        SchedulePageView()
    }
}
