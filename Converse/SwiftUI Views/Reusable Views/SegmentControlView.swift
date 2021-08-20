//
//  SegmentControlView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

struct SegmentControlView: View {
    
    var options: [String]
    @Binding var selection: Int
    
    @Namespace private var animation
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<options.count, id:\.self) { i in
                Text(options[i])
                    .textCase(.uppercase)
                    .foregroundColor(i==selection ? .secondaryBlue : .white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        ZStack {
                            if selection == i {
                                Color.offWhite
                                    .matchedGeometryEffect(id: "SegControl", in: animation)
                            } else {
                                Color.clear
                            }

                        }
                    )
                    .cornerRadius(6)
                    .contentShape(RoundedRectangle(cornerRadius: 5))
                    .onTapGesture {
                        withAnimation(.default) {
                            selection = i
                        }
                    }
            }
        }
        .font(.prodSans(.bold, size: 14))
        .frame(maxWidth: .infinity)
        .frame(height: 30)
        .background(Color.white.opacity(0.05))
        .cornerRadius(6)
    }
}
